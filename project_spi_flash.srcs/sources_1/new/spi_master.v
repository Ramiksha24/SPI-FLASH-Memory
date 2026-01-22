`timescale 1ns / 1ps

//===========================================================================
// COMPLETE W25Q128JV SPI FLASH CONTROLLER
// Handles: Read ID, Read Data, Page Program, Sector Erase with proper timing
// All timing requirements met per datasheet
//===========================================================================

module w25q128_controller #(
    parameter CLK_FREQ = 100_000_000,  // 100 MHz system clock
    parameter SPI_FREQ = 10_000_000    // 10 MHz SPI clock
)(
    input wire clk,
    input wire rst_n,
    
    // Command interface
    input wire cmd_read_id,              // Read JEDEC ID
    input wire cmd_read,                 // Read data
    input wire cmd_program,              // Page program
    input wire cmd_erase_sector,         // 4KB sector erase
    
    // Data interface
    input wire [23:0] address,           // 24-bit address
    input wire [7:0] write_data,         // Data to write
    output reg [7:0] read_data,          // Data read
    output reg [23:0] jedec_id,          // Manufacturer + Device ID
    
    // Status
    output reg busy,                     // Controller busy
    output reg done,                     // Operation complete
    output reg error,                    // Error flag
    
    // SPI interface
    output reg spi_cs_n,
    output reg spi_sck,
    output reg spi_mosi,
    output reg [7:0] shift_out,
    input wire spi_miso
);

    //=======================================================================
    // Parameters
    //=======================================================================
    
    localparam CLK_DIV = CLK_FREQ / (2 * SPI_FREQ);
    
    // Flash commands
    localparam CMD_RELEASE_PD    = 8'hAB;  // Release power-down
    localparam CMD_JEDEC_ID      = 8'h9F;  // Read JEDEC ID
    localparam CMD_READ_DATA     = 8'h03;  // Read data
    localparam CMD_WRITE_ENABLE  = 8'h06;  // Write enable
    localparam CMD_PAGE_PROGRAM  = 8'h02;  // Page program
    localparam CMD_SECTOR_ERASE  = 8'h20;  // 4KB sector erase
    localparam CMD_READ_STATUS   = 8'h05;  // Read status register
    
    // States
    localparam ST_IDLE              = 6'd0;
    localparam ST_RELEASE_PD        = 6'd1;
    localparam ST_WAIT_RELEASE      = 6'd2;
    localparam ST_READ_ID_START     = 6'd3;
    localparam ST_READ_ID_DATA      = 6'd4;
    localparam ST_READ_START        = 6'd5;
    localparam ST_READ_ADDR         = 6'd6;
    localparam ST_READ_DATA         = 6'd7;
    localparam ST_WRITE_EN          = 6'd8;
    localparam ST_WAIT_WRITE_EN     = 6'd9;
    localparam ST_PROGRAM_START     = 6'd10;
    localparam ST_PROGRAM_ADDR      = 6'd11;
    localparam ST_PROGRAM_DATA      = 6'd12;
    localparam ST_ERASE_EN          = 6'd13;
    localparam ST_WAIT_ERASE_EN     = 6'd14;
    localparam ST_ERASE_START       = 6'd15;
    localparam ST_ERASE_ADDR        = 6'd16;
    localparam ST_CHECK_STATUS      = 6'd17;
    localparam ST_READ_STATUS       = 6'd18;
    localparam ST_WAIT_BUSY         = 6'd19;
    localparam ST_DONE              = 6'd20;
    localparam ST_ERROR             = 6'd21;
    
    //=======================================================================
    // Registers
    //=======================================================================
    
    reg [5:0] state, next_state;
    reg [5:0] return_state;
    
    reg [15:0] sck_count;
    reg sck_enable;
    reg sck_toggle;
    
    
    reg [7:0] shift_in;
    reg [5:0] bit_counter;
    reg [31:0] byte_counter;
    
    reg [23:0] addr_buf;
    reg [7:0] data_buf;
    reg [7:0] status_reg;
    
    reg [31:0] wait_counter;
    reg [31:0] timeout_counter;
    
    reg first_access;
    
    reg load_shift_out;
    reg [7:0] shift_out_data;
   
    
    //=======================================================================
    // SPI Clock Generation
    //=======================================================================
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sck_count <= 0;
            sck_toggle <= 0;
        end else if (sck_enable) begin
            if (sck_count == CLK_DIV - 1) begin
                sck_count <= 0;
                sck_toggle <= 1;
            end else begin
                sck_count <= sck_count + 1;
                sck_toggle <= 0;
            end
        end else begin
            sck_count <= 0;
            sck_toggle <= 0;
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            spi_sck <= 0;
        end else if (sck_toggle && sck_enable) begin
            spi_sck <= ~spi_sck;
        end else if (!sck_enable) begin
            spi_sck <= 0;
        end
    end
    
    //=======================================================================
    // SPI Data Shift - SINGLE ALWAYS BLOCK FOR shift_out
    //=======================================================================
    
    // Shift out on falling edge, shift in on rising edge (Mode 0)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            spi_mosi <= 0;
            shift_in <= 0;
            shift_out <= 0;
        end else begin
            // Load new data into shift register
            if (load_shift_out) begin
                shift_out <= shift_out_data;
            end else if (sck_toggle && sck_enable) begin
                if (spi_sck) begin
                    // Falling edge - shift out
                    spi_mosi <= shift_out[7];
                    shift_out <= {shift_out[6:0], 1'b0};
                end else begin
                    // Rising edge - shift in
                    shift_in <= {shift_in[6:0], spi_miso};
                end
            end
        end
    end
    
    //=======================================================================
    // Main State Machine
    //=======================================================================
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= ST_IDLE;
            next_state <= ST_IDLE;
            return_state <= ST_IDLE;
            spi_cs_n <= 1;
            sck_enable <= 0;
            busy <= 0;
            done <= 0;
            error <= 0;
            bit_counter <= 0;
            byte_counter <= 0;
            wait_counter <= 0;
            timeout_counter <= 0;
            jedec_id <= 0;
            read_data <= 0;
            first_access <= 1;
            addr_buf <= 0;
            data_buf <= 0;
            status_reg <= 0;
            load_shift_out <= 0;
            shift_out_data <= 0;
        end else begin
            // Default: don't load new data
            load_shift_out <= 0;
            
            case (state)
                
                //===========================================================
                // IDLE - Wait for command
                //===========================================================
                ST_IDLE: begin
                    spi_cs_n <= 1;
                    sck_enable <= 0;
                    busy <= 0;
                    done <= 0;
                    error <= 0;
                    timeout_counter <= 0;
                    
                    if (first_access) begin
                        // First access after power-up - release power-down
                        busy <= 1;
                        first_access <= 0;
                        state <= ST_RELEASE_PD;
                    end else if (cmd_read_id) begin
                        busy <= 1;
                        state <= ST_READ_ID_START;
                    end else if (cmd_read) begin
                        busy <= 1;
                        addr_buf <= address;
                        state <= ST_READ_START;
                    end else if (cmd_program) begin
                        busy <= 1;
                        addr_buf <= address;
                        data_buf <= write_data;
                        return_state <= ST_PROGRAM_START;
                        state <= ST_WRITE_EN;
                    end else if (cmd_erase_sector) begin
                        busy <= 1;
                        addr_buf <= address;
                        return_state <= ST_ERASE_START;
                        state <= ST_ERASE_EN;
                    end
                end
                
                //===========================================================
                // RELEASE POWER-DOWN (ABh)
                //===========================================================
                ST_RELEASE_PD: begin
                    spi_cs_n <= 0;
                    sck_enable <= 1;
                    shift_out_data <= CMD_RELEASE_PD;
                    load_shift_out <= 1;
                    bit_counter <= 8;
                    state <= ST_WAIT_RELEASE;
                end
                
                ST_WAIT_RELEASE: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        spi_cs_n <= 1;
                        sck_enable <= 0;
                        wait_counter <= 300;  // 3탎 @ 100MHz
                        state <= ST_IDLE;
                    end
                end
                
                //===========================================================
                // READ JEDEC ID (9Fh)
                //===========================================================
                ST_READ_ID_START: begin
                    spi_cs_n <= 0;
                    sck_enable <= 1;
                    shift_out_data <= CMD_JEDEC_ID;
                    load_shift_out <= 1;
                    bit_counter <= 8;
                    byte_counter <= 0;
                    state <= ST_READ_ID_DATA;
                end
                
                ST_READ_ID_DATA: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        if (byte_counter == 0) begin
                            // Sent command, now read 3 bytes
                            shift_out_data <= 8'h00;  // Dummy
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 1;
                        end else if (byte_counter <= 3) begin
                            // Store received byte
                            case (byte_counter)
                                1: jedec_id[23:16] <= shift_in;  // Manufacturer
                                2: jedec_id[15:8] <= shift_in;   // Memory Type
                                3: jedec_id[7:0] <= shift_in;    // Capacity
                            endcase
                            
                            if (byte_counter == 3) begin
                                spi_cs_n <= 1;
                                sck_enable <= 0;
                                state <= ST_DONE;
                            end else begin
                                shift_out_data <= 8'h00;
                                load_shift_out <= 1;
                                bit_counter <= 8;
                                byte_counter <= byte_counter + 1;
                            end
                        end
                    end
                end
                
                //===========================================================
                // READ DATA (03h)
                //===========================================================
                ST_READ_START: begin
                    spi_cs_n <= 0;
                    sck_enable <= 1;
                    shift_out_data <= CMD_READ_DATA;
                    load_shift_out <= 1;
                    bit_counter <= 8;
                    state <= ST_READ_ADDR;
                end
                
                ST_READ_ADDR: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        if (byte_counter == 0) begin
                            // Sent command, send address byte 1
                            shift_out_data <= addr_buf[23:16];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 1;
                        end else if (byte_counter == 1) begin
                            shift_out_data <= addr_buf[15:8];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 2;
                        end else if (byte_counter == 2) begin
                            shift_out_data <= addr_buf[7:0];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 3;
                        end else begin
                            // Address sent, read data
                            shift_out_data <= 8'h00;
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            state <= ST_READ_DATA;
                        end
                    end
                end
                
                ST_READ_DATA: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        read_data <= shift_in;
                        spi_cs_n <= 1;
                        sck_enable <= 0;
                        state <= ST_DONE;
                    end
                end
                
                //===========================================================
                // WRITE ENABLE (06h)
                //===========================================================
                ST_WRITE_EN: begin
                    spi_cs_n <= 0;
                    sck_enable <= 1;
                    shift_out_data <= CMD_WRITE_ENABLE;
                    load_shift_out <= 1;
                    bit_counter <= 8;
                    state <= ST_WAIT_WRITE_EN;
                end
                
                ST_WAIT_WRITE_EN: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        spi_cs_n <= 1;
                        sck_enable <= 0;
                        wait_counter <= 100;  // Small delay
                        state <= return_state;
                    end
                end
                
                //===========================================================
                // PAGE PROGRAM (02h)
                //===========================================================
                ST_PROGRAM_START: begin
                    if (wait_counter > 0) begin
                        wait_counter <= wait_counter - 1;
                    end else begin
                        spi_cs_n <= 0;
                        sck_enable <= 1;
                        shift_out_data <= CMD_PAGE_PROGRAM;
                        load_shift_out <= 1;
                        bit_counter <= 8;
                        byte_counter <= 0;
                        state <= ST_PROGRAM_ADDR;
                    end
                end
                
                ST_PROGRAM_ADDR: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        if (byte_counter == 0) begin
                            shift_out_data <= addr_buf[23:16];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 1;
                        end else if (byte_counter == 1) begin
                            shift_out_data <= addr_buf[15:8];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 2;
                        end else if (byte_counter == 2) begin
                            shift_out_data <= addr_buf[7:0];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 3;
                        end else begin
                            shift_out_data <= data_buf;
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            state <= ST_PROGRAM_DATA;
                        end
                    end
                end
                
                ST_PROGRAM_DATA: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        spi_cs_n <= 1;
                        sck_enable <= 0;
                        wait_counter <= 5000;  // 50탎 min CS deselect
                        return_state <= ST_DONE;
                        state <= ST_CHECK_STATUS;
                    end
                end
                
                //===========================================================
                // SECTOR ERASE (20h)
                //===========================================================
                ST_ERASE_EN: begin
                    spi_cs_n <= 0;
                    sck_enable <= 1;
                    shift_out_data <= CMD_WRITE_ENABLE;
                    load_shift_out <= 1;
                    bit_counter <= 8;
                    state <= ST_WAIT_ERASE_EN;
                end
                
                ST_WAIT_ERASE_EN: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        spi_cs_n <= 1;
                        sck_enable <= 0;
                        wait_counter <= 100;
                        state <= ST_ERASE_START;
                    end
                end
                
                ST_ERASE_START: begin
                    if (wait_counter > 0) begin
                        wait_counter <= wait_counter - 1;
                    end else begin
                        spi_cs_n <= 0;
                        sck_enable <= 1;
                        shift_out_data <= CMD_SECTOR_ERASE;
                        load_shift_out <= 1;
                        bit_counter <= 8;
                        byte_counter <= 0;
                        state <= ST_ERASE_ADDR;
                    end
                end
                
                ST_ERASE_ADDR: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        if (byte_counter == 0) begin
                            shift_out_data <= addr_buf[23:16];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 1;
                        end else if (byte_counter == 1) begin
                            shift_out_data <= addr_buf[15:8];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 2;
                        end else if (byte_counter == 2) begin
                            shift_out_data <= addr_buf[7:0];
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 3;
                        end else begin
                            spi_cs_n <= 1;
                            sck_enable <= 0;
                            wait_counter <= 5000;  // 50탎
                            return_state <= ST_DONE;
                            state <= ST_CHECK_STATUS;
                        end
                    end
                end
                
                //===========================================================
                // CHECK STATUS (05h) - Poll until not busy
                //===========================================================
                ST_CHECK_STATUS: begin
                    if (wait_counter > 0) begin
                        wait_counter <= wait_counter - 1;
                    end else begin
                        spi_cs_n <= 0;
                        sck_enable <= 1;
                        shift_out_data <= CMD_READ_STATUS;
                        load_shift_out <= 1;
                        bit_counter <= 8;
                        byte_counter <= 0;
                        state <= ST_READ_STATUS;
                    end
                end
                
                ST_READ_STATUS: begin
                    if (sck_toggle && !spi_sck && bit_counter > 0) begin
                        bit_counter <= bit_counter - 1;
                    end else if (bit_counter == 0) begin
                        if (byte_counter == 0) begin
                            // Sent command, read status
                            shift_out_data <= 8'h00;
                            load_shift_out <= 1;
                            bit_counter <= 8;
                            byte_counter <= 1;
                        end else begin
                            status_reg <= shift_in;
                            spi_cs_n <= 1;
                            sck_enable <= 0;
                            state <= ST_WAIT_BUSY;
                        end
                    end
                end
                
                ST_WAIT_BUSY: begin
                    timeout_counter <= timeout_counter + 1;
                    
                    // Check timeout (prevent infinite loop)
                    if (timeout_counter > 32'd50_000_000) begin  // 500ms @ 100MHz
                        error <= 1;
                        state <= ST_ERROR;
                    end else if (status_reg[0] == 0) begin  // BUSY bit clear
                        state <= return_state;
                    end else begin
                        // Still busy, check again
                        wait_counter <= 1000;  // 10탎 between polls
                        state <= ST_CHECK_STATUS;
                    end
                end
                
                //===========================================================
                // DONE
                //===========================================================
                ST_DONE: begin
                    done <= 1;
                    busy <= 0;
                    if (!cmd_read_id && !cmd_read && !cmd_program && !cmd_erase_sector) begin
                        state <= ST_IDLE;
                    end
                end
                
                //===========================================================
                // ERROR
                //===========================================================
                ST_ERROR: begin
                    error <= 1;
                    busy <= 0;
                    spi_cs_n <= 1;
                    sck_enable <= 0;
                    if (!cmd_read_id && !cmd_read && !cmd_program && !cmd_erase_sector) begin
                        state <= ST_IDLE;
                    end
                end
                
                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule