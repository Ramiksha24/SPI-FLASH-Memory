// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Dec 26 12:21:06 2025
// Host        : LAPTOP-9FF0L5N1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_w25q128_controller_0_0_sim_netlist.v
// Design      : design_1_w25q128_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_w25q128_controller_0_0,w25q128_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "w25q128_controller,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    cmd_read_id,
    cmd_read,
    cmd_program,
    cmd_erase_sector,
    address,
    write_data,
    read_data,
    jedec_id,
    busy,
    done,
    error,
    spi_cs_n,
    spi_sck,
    spi_mosi,
    shift_out,
    spi_miso);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input cmd_read_id;
  input cmd_read;
  input cmd_program;
  input cmd_erase_sector;
  input [23:0]address;
  input [7:0]write_data;
  output [7:0]read_data;
  output [23:0]jedec_id;
  output busy;
  output done;
  output error;
  output spi_cs_n;
  output spi_sck;
  output spi_mosi;
  output [7:0]shift_out;
  input spi_miso;

  wire [23:0]address;
  wire busy;
  wire clk;
  wire cmd_erase_sector;
  wire cmd_program;
  wire cmd_read;
  wire cmd_read_id;
  wire done;
  wire error;
  wire [23:0]jedec_id;
  wire [7:0]read_data;
  wire rst_n;
  wire [7:0]shift_out;
  wire spi_cs_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sck;
  wire [7:0]write_data;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_w25q128_controller inst
       (.address(address),
        .busy(busy),
        .clk(clk),
        .cmd_erase_sector(cmd_erase_sector),
        .cmd_program(cmd_program),
        .cmd_read(cmd_read),
        .cmd_read_id(cmd_read_id),
        .done(done),
        .error(error),
        .jedec_id(jedec_id),
        .read_data(read_data),
        .rst_n(rst_n),
        .shift_out(shift_out),
        .spi_cs_n(spi_cs_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sck_reg_0(spi_sck),
        .write_data(write_data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_w25q128_controller
   (read_data,
    jedec_id,
    shift_out,
    spi_sck_reg_0,
    busy,
    done,
    error,
    spi_mosi,
    spi_cs_n,
    clk,
    spi_miso,
    address,
    write_data,
    cmd_read_id,
    cmd_program,
    cmd_read,
    cmd_erase_sector,
    rst_n);
  output [7:0]read_data;
  output [23:0]jedec_id;
  output [7:0]shift_out;
  output spi_sck_reg_0;
  output busy;
  output done;
  output error;
  output spi_mosi;
  output spi_cs_n;
  input clk;
  input spi_miso;
  input [23:0]address;
  input [7:0]write_data;
  input cmd_read_id;
  input cmd_program;
  input cmd_read;
  input cmd_erase_sector;
  input rst_n;

  wire \addr_buf[23]_i_1_n_0 ;
  wire \addr_buf_reg_n_0_[0] ;
  wire \addr_buf_reg_n_0_[1] ;
  wire \addr_buf_reg_n_0_[2] ;
  wire \addr_buf_reg_n_0_[3] ;
  wire \addr_buf_reg_n_0_[4] ;
  wire \addr_buf_reg_n_0_[5] ;
  wire \addr_buf_reg_n_0_[6] ;
  wire \addr_buf_reg_n_0_[7] ;
  wire [23:0]address;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[0]_i_2_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[1]_i_2_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[2]_i_2_n_0 ;
  wire \bit_counter[2]_i_3_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_2_n_0 ;
  wire \bit_counter[3]_i_3_n_0 ;
  wire \bit_counter[4]_i_1_n_0 ;
  wire \bit_counter[4]_i_2_n_0 ;
  wire \bit_counter[5]_i_10_n_0 ;
  wire \bit_counter[5]_i_11_n_0 ;
  wire \bit_counter[5]_i_12_n_0 ;
  wire \bit_counter[5]_i_13_n_0 ;
  wire \bit_counter[5]_i_14_n_0 ;
  wire \bit_counter[5]_i_1_n_0 ;
  wire \bit_counter[5]_i_2_n_0 ;
  wire \bit_counter[5]_i_3_n_0 ;
  wire \bit_counter[5]_i_4_n_0 ;
  wire \bit_counter[5]_i_5_n_0 ;
  wire \bit_counter[5]_i_6_n_0 ;
  wire \bit_counter[5]_i_7_n_0 ;
  wire \bit_counter[5]_i_8_n_0 ;
  wire \bit_counter[5]_i_9_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire \bit_counter_reg_n_0_[5] ;
  wire busy;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_i_3_n_0;
  wire busy_i_4_n_0;
  wire [2:0]byte_counter;
  wire \byte_counter[0]_i_1_n_0 ;
  wire \byte_counter[0]_i_2_n_0 ;
  wire \byte_counter[0]_i_3_n_0 ;
  wire \byte_counter[0]_i_4_n_0 ;
  wire \byte_counter[1]_i_1_n_0 ;
  wire \byte_counter[1]_i_2_n_0 ;
  wire \byte_counter[1]_i_3_n_0 ;
  wire \byte_counter[1]_i_4_n_0 ;
  wire \byte_counter[1]_i_5_n_0 ;
  wire \byte_counter[2]_i_1_n_0 ;
  wire \byte_counter[2]_i_2_n_0 ;
  wire \byte_counter[2]_i_3_n_0 ;
  wire \byte_counter[2]_i_4_n_0 ;
  wire \byte_counter[2]_i_5_n_0 ;
  wire \byte_counter[2]_i_6_n_0 ;
  wire \byte_counter[2]_i_7_n_0 ;
  wire \byte_counter[2]_i_8_n_0 ;
  wire \byte_counter[2]_i_9_n_0 ;
  wire clk;
  wire cmd_erase_sector;
  wire cmd_program;
  wire cmd_read;
  wire cmd_read_id;
  wire [15:1]data0;
  wire [7:0]data_buf;
  wire \data_buf[7]_i_1_n_0 ;
  wire done;
  wire done_i_1_n_0;
  wire error;
  wire error_i_10_n_0;
  wire error_i_11_n_0;
  wire error_i_12_n_0;
  wire error_i_13_n_0;
  wire error_i_1_n_0;
  wire error_i_2_n_0;
  wire error_i_3_n_0;
  wire error_i_4_n_0;
  wire error_i_5_n_0;
  wire error_i_6_n_0;
  wire error_i_7_n_0;
  wire error_i_8_n_0;
  wire error_i_9_n_0;
  wire first_access;
  wire first_access_i_1_n_0;
  wire [23:0]jedec_id;
  wire \jedec_id[15]_i_1_n_0 ;
  wire \jedec_id[15]_i_2_n_0 ;
  wire \jedec_id[15]_i_3_n_0 ;
  wire \jedec_id[23]_i_1_n_0 ;
  wire \jedec_id[23]_i_2_n_0 ;
  wire \jedec_id[23]_i_3_n_0 ;
  wire \jedec_id[7]_i_1_n_0 ;
  wire load_shift_out_i_1_n_0;
  wire load_shift_out_i_2_n_0;
  wire load_shift_out_i_3_n_0;
  wire load_shift_out_reg_n_0;
  wire [7:0]p_1_in;
  wire [7:0]p_2_in;
  wire [7:0]read_data;
  wire \read_data[7]_i_1_n_0 ;
  wire \read_data[7]_i_2_n_0 ;
  wire \read_data[7]_i_3_n_0 ;
  wire \read_data[7]_i_4_n_0 ;
  wire \return_state[0]_i_1_n_0 ;
  wire \return_state[1]_i_1_n_0 ;
  wire \return_state[2]_i_1_n_0 ;
  wire \return_state[4]_i_1_n_0 ;
  wire \return_state[4]_i_2_n_0 ;
  wire \return_state[4]_i_3_n_0 ;
  wire \return_state[4]_i_4_n_0 ;
  wire \return_state_reg_n_0_[0] ;
  wire \return_state_reg_n_0_[1] ;
  wire \return_state_reg_n_0_[2] ;
  wire \return_state_reg_n_0_[4] ;
  wire rst_n;
  wire [15:0]sck_count;
  wire sck_count0_carry__0_n_0;
  wire sck_count0_carry__0_n_1;
  wire sck_count0_carry__0_n_2;
  wire sck_count0_carry__0_n_3;
  wire sck_count0_carry__1_n_0;
  wire sck_count0_carry__1_n_1;
  wire sck_count0_carry__1_n_2;
  wire sck_count0_carry__1_n_3;
  wire sck_count0_carry__2_n_2;
  wire sck_count0_carry__2_n_3;
  wire sck_count0_carry_n_0;
  wire sck_count0_carry_n_1;
  wire sck_count0_carry_n_2;
  wire sck_count0_carry_n_3;
  wire \sck_count[0]_i_1_n_0 ;
  wire \sck_count[10]_i_1_n_0 ;
  wire \sck_count[11]_i_1_n_0 ;
  wire \sck_count[12]_i_1_n_0 ;
  wire \sck_count[13]_i_1_n_0 ;
  wire \sck_count[14]_i_1_n_0 ;
  wire \sck_count[15]_i_1_n_0 ;
  wire \sck_count[15]_i_2_n_0 ;
  wire \sck_count[15]_i_3_n_0 ;
  wire \sck_count[15]_i_4_n_0 ;
  wire \sck_count[15]_i_5_n_0 ;
  wire \sck_count[1]_i_1_n_0 ;
  wire \sck_count[2]_i_1_n_0 ;
  wire \sck_count[3]_i_1_n_0 ;
  wire \sck_count[4]_i_1_n_0 ;
  wire \sck_count[5]_i_1_n_0 ;
  wire \sck_count[6]_i_1_n_0 ;
  wire \sck_count[7]_i_1_n_0 ;
  wire \sck_count[8]_i_1_n_0 ;
  wire \sck_count[9]_i_1_n_0 ;
  wire sck_enable_i_1_n_0;
  wire sck_enable_i_2_n_0;
  wire sck_enable_reg_n_0;
  wire sck_toggle16_out;
  wire sck_toggle_reg_n_0;
  wire [7:0]shift_in;
  wire shift_in_0;
  wire [7:0]shift_out;
  wire \shift_out[0]_i_1_n_0 ;
  wire \shift_out[1]_i_1_n_0 ;
  wire \shift_out[2]_i_1_n_0 ;
  wire \shift_out[3]_i_1_n_0 ;
  wire \shift_out[4]_i_1_n_0 ;
  wire \shift_out[5]_i_1_n_0 ;
  wire \shift_out[6]_i_1_n_0 ;
  wire \shift_out[7]_i_1_n_0 ;
  wire \shift_out[7]_i_2_n_0 ;
  wire [7:0]shift_out_data;
  wire \shift_out_data[0]_i_1_n_0 ;
  wire \shift_out_data[0]_i_2_n_0 ;
  wire \shift_out_data[0]_i_3_n_0 ;
  wire \shift_out_data[1]_i_1_n_0 ;
  wire \shift_out_data[1]_i_2_n_0 ;
  wire \shift_out_data[1]_i_3_n_0 ;
  wire \shift_out_data[1]_i_4_n_0 ;
  wire \shift_out_data[1]_i_5_n_0 ;
  wire \shift_out_data[1]_i_6_n_0 ;
  wire \shift_out_data[1]_i_7_n_0 ;
  wire \shift_out_data[2]_i_1_n_0 ;
  wire \shift_out_data[2]_i_2_n_0 ;
  wire \shift_out_data[2]_i_3_n_0 ;
  wire \shift_out_data[2]_i_4_n_0 ;
  wire \shift_out_data[2]_i_5_n_0 ;
  wire \shift_out_data[2]_i_6_n_0 ;
  wire \shift_out_data[3]_i_1_n_0 ;
  wire \shift_out_data[3]_i_2_n_0 ;
  wire \shift_out_data[3]_i_3_n_0 ;
  wire \shift_out_data[3]_i_4_n_0 ;
  wire \shift_out_data[4]_i_1_n_0 ;
  wire \shift_out_data[4]_i_2_n_0 ;
  wire \shift_out_data[4]_i_3_n_0 ;
  wire \shift_out_data[4]_i_4_n_0 ;
  wire \shift_out_data[5]_i_1_n_0 ;
  wire \shift_out_data[5]_i_2_n_0 ;
  wire \shift_out_data[5]_i_3_n_0 ;
  wire \shift_out_data[5]_i_4_n_0 ;
  wire \shift_out_data[5]_i_5_n_0 ;
  wire \shift_out_data[5]_i_6_n_0 ;
  wire \shift_out_data[5]_i_7_n_0 ;
  wire \shift_out_data[6]_i_1_n_0 ;
  wire \shift_out_data[6]_i_2_n_0 ;
  wire \shift_out_data[6]_i_3_n_0 ;
  wire \shift_out_data[6]_i_4_n_0 ;
  wire \shift_out_data[6]_i_5_n_0 ;
  wire \shift_out_data[6]_i_6_n_0 ;
  wire \shift_out_data[7]_i_1_n_0 ;
  wire \shift_out_data[7]_i_2_n_0 ;
  wire \shift_out_data[7]_i_3_n_0 ;
  wire \shift_out_data[7]_i_4_n_0 ;
  wire \shift_out_data[7]_i_5_n_0 ;
  wire spi_cs_n;
  wire spi_cs_n_i_10_n_0;
  wire spi_cs_n_i_11_n_0;
  wire spi_cs_n_i_12_n_0;
  wire spi_cs_n_i_13_n_0;
  wire spi_cs_n_i_14_n_0;
  wire spi_cs_n_i_15_n_0;
  wire spi_cs_n_i_16_n_0;
  wire spi_cs_n_i_17_n_0;
  wire spi_cs_n_i_18_n_0;
  wire spi_cs_n_i_19_n_0;
  wire spi_cs_n_i_1_n_0;
  wire spi_cs_n_i_20_n_0;
  wire spi_cs_n_i_21_n_0;
  wire spi_cs_n_i_2_n_0;
  wire spi_cs_n_i_3_n_0;
  wire spi_cs_n_i_4_n_0;
  wire spi_cs_n_i_5_n_0;
  wire spi_cs_n_i_6_n_0;
  wire spi_cs_n_i_7_n_0;
  wire spi_cs_n_i_8_n_0;
  wire spi_cs_n_i_9_n_0;
  wire spi_miso;
  wire spi_mosi;
  wire spi_mosi_i_1_n_0;
  wire spi_sck_i_1_n_0;
  wire spi_sck_reg_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[1]_i_10_n_0 ;
  wire \state[1]_i_11_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[1]_i_9_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_12_n_0 ;
  wire \state[3]_i_13_n_0 ;
  wire \state[3]_i_14_n_0 ;
  wire \state[3]_i_15_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state[5]_i_10_n_0 ;
  wire \state[5]_i_11_n_0 ;
  wire \state[5]_i_12_n_0 ;
  wire \state[5]_i_13_n_0 ;
  wire \state[5]_i_14_n_0 ;
  wire \state[5]_i_15_n_0 ;
  wire \state[5]_i_16_n_0 ;
  wire \state[5]_i_17_n_0 ;
  wire \state[5]_i_18_n_0 ;
  wire \state[5]_i_19_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[5]_i_20_n_0 ;
  wire \state[5]_i_21_n_0 ;
  wire \state[5]_i_22_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire \state[5]_i_3_n_0 ;
  wire \state[5]_i_4_n_0 ;
  wire \state[5]_i_5_n_0 ;
  wire \state[5]_i_6_n_0 ;
  wire \state[5]_i_7_n_0 ;
  wire \state[5]_i_8_n_0 ;
  wire \state[5]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \status_reg[0]_i_1_n_0 ;
  wire \status_reg_reg_n_0_[0] ;
  wire [31:0]timeout_counter;
  wire [31:1]timeout_counter0;
  wire timeout_counter0_carry__0_n_0;
  wire timeout_counter0_carry__0_n_1;
  wire timeout_counter0_carry__0_n_2;
  wire timeout_counter0_carry__0_n_3;
  wire timeout_counter0_carry__1_n_0;
  wire timeout_counter0_carry__1_n_1;
  wire timeout_counter0_carry__1_n_2;
  wire timeout_counter0_carry__1_n_3;
  wire timeout_counter0_carry__2_n_0;
  wire timeout_counter0_carry__2_n_1;
  wire timeout_counter0_carry__2_n_2;
  wire timeout_counter0_carry__2_n_3;
  wire timeout_counter0_carry__3_n_0;
  wire timeout_counter0_carry__3_n_1;
  wire timeout_counter0_carry__3_n_2;
  wire timeout_counter0_carry__3_n_3;
  wire timeout_counter0_carry__4_n_0;
  wire timeout_counter0_carry__4_n_1;
  wire timeout_counter0_carry__4_n_2;
  wire timeout_counter0_carry__4_n_3;
  wire timeout_counter0_carry__5_n_0;
  wire timeout_counter0_carry__5_n_1;
  wire timeout_counter0_carry__5_n_2;
  wire timeout_counter0_carry__5_n_3;
  wire timeout_counter0_carry__6_n_2;
  wire timeout_counter0_carry__6_n_3;
  wire timeout_counter0_carry_n_0;
  wire timeout_counter0_carry_n_1;
  wire timeout_counter0_carry_n_2;
  wire timeout_counter0_carry_n_3;
  wire \timeout_counter[0]_i_1_n_0 ;
  wire \timeout_counter[10]_i_1_n_0 ;
  wire \timeout_counter[11]_i_1_n_0 ;
  wire \timeout_counter[12]_i_1_n_0 ;
  wire \timeout_counter[13]_i_1_n_0 ;
  wire \timeout_counter[14]_i_1_n_0 ;
  wire \timeout_counter[15]_i_1_n_0 ;
  wire \timeout_counter[16]_i_1_n_0 ;
  wire \timeout_counter[17]_i_1_n_0 ;
  wire \timeout_counter[18]_i_1_n_0 ;
  wire \timeout_counter[19]_i_1_n_0 ;
  wire \timeout_counter[1]_i_1_n_0 ;
  wire \timeout_counter[20]_i_1_n_0 ;
  wire \timeout_counter[21]_i_1_n_0 ;
  wire \timeout_counter[22]_i_1_n_0 ;
  wire \timeout_counter[23]_i_1_n_0 ;
  wire \timeout_counter[24]_i_1_n_0 ;
  wire \timeout_counter[25]_i_1_n_0 ;
  wire \timeout_counter[26]_i_1_n_0 ;
  wire \timeout_counter[27]_i_1_n_0 ;
  wire \timeout_counter[28]_i_1_n_0 ;
  wire \timeout_counter[29]_i_1_n_0 ;
  wire \timeout_counter[2]_i_1_n_0 ;
  wire \timeout_counter[30]_i_1_n_0 ;
  wire \timeout_counter[31]_i_1_n_0 ;
  wire \timeout_counter[31]_i_2_n_0 ;
  wire \timeout_counter[3]_i_1_n_0 ;
  wire \timeout_counter[4]_i_1_n_0 ;
  wire \timeout_counter[5]_i_1_n_0 ;
  wire \timeout_counter[6]_i_1_n_0 ;
  wire \timeout_counter[7]_i_1_n_0 ;
  wire \timeout_counter[8]_i_1_n_0 ;
  wire \timeout_counter[9]_i_1_n_0 ;
  wire [31:0]wait_counter;
  wire [31:1]wait_counter0;
  wire wait_counter0_carry__0_i_1_n_0;
  wire wait_counter0_carry__0_i_2_n_0;
  wire wait_counter0_carry__0_i_3_n_0;
  wire wait_counter0_carry__0_i_4_n_0;
  wire wait_counter0_carry__0_n_0;
  wire wait_counter0_carry__0_n_1;
  wire wait_counter0_carry__0_n_2;
  wire wait_counter0_carry__0_n_3;
  wire wait_counter0_carry__1_i_1_n_0;
  wire wait_counter0_carry__1_i_2_n_0;
  wire wait_counter0_carry__1_i_3_n_0;
  wire wait_counter0_carry__1_i_4_n_0;
  wire wait_counter0_carry__1_n_0;
  wire wait_counter0_carry__1_n_1;
  wire wait_counter0_carry__1_n_2;
  wire wait_counter0_carry__1_n_3;
  wire wait_counter0_carry__2_i_1_n_0;
  wire wait_counter0_carry__2_i_2_n_0;
  wire wait_counter0_carry__2_i_3_n_0;
  wire wait_counter0_carry__2_i_4_n_0;
  wire wait_counter0_carry__2_n_0;
  wire wait_counter0_carry__2_n_1;
  wire wait_counter0_carry__2_n_2;
  wire wait_counter0_carry__2_n_3;
  wire wait_counter0_carry__3_i_1_n_0;
  wire wait_counter0_carry__3_i_2_n_0;
  wire wait_counter0_carry__3_i_3_n_0;
  wire wait_counter0_carry__3_i_4_n_0;
  wire wait_counter0_carry__3_n_0;
  wire wait_counter0_carry__3_n_1;
  wire wait_counter0_carry__3_n_2;
  wire wait_counter0_carry__3_n_3;
  wire wait_counter0_carry__4_i_1_n_0;
  wire wait_counter0_carry__4_i_2_n_0;
  wire wait_counter0_carry__4_i_3_n_0;
  wire wait_counter0_carry__4_i_4_n_0;
  wire wait_counter0_carry__4_n_0;
  wire wait_counter0_carry__4_n_1;
  wire wait_counter0_carry__4_n_2;
  wire wait_counter0_carry__4_n_3;
  wire wait_counter0_carry__5_i_1_n_0;
  wire wait_counter0_carry__5_i_2_n_0;
  wire wait_counter0_carry__5_i_3_n_0;
  wire wait_counter0_carry__5_i_4_n_0;
  wire wait_counter0_carry__5_n_0;
  wire wait_counter0_carry__5_n_1;
  wire wait_counter0_carry__5_n_2;
  wire wait_counter0_carry__5_n_3;
  wire wait_counter0_carry__6_i_1_n_0;
  wire wait_counter0_carry__6_i_2_n_0;
  wire wait_counter0_carry__6_i_3_n_0;
  wire wait_counter0_carry__6_n_2;
  wire wait_counter0_carry__6_n_3;
  wire wait_counter0_carry_i_1_n_0;
  wire wait_counter0_carry_i_2_n_0;
  wire wait_counter0_carry_i_3_n_0;
  wire wait_counter0_carry_i_4_n_0;
  wire wait_counter0_carry_n_0;
  wire wait_counter0_carry_n_1;
  wire wait_counter0_carry_n_2;
  wire wait_counter0_carry_n_3;
  wire \wait_counter[0]_i_1_n_0 ;
  wire \wait_counter[10]_i_1_n_0 ;
  wire \wait_counter[11]_i_1_n_0 ;
  wire \wait_counter[12]_i_1_n_0 ;
  wire \wait_counter[13]_i_1_n_0 ;
  wire \wait_counter[14]_i_1_n_0 ;
  wire \wait_counter[15]_i_1_n_0 ;
  wire \wait_counter[16]_i_1_n_0 ;
  wire \wait_counter[17]_i_1_n_0 ;
  wire \wait_counter[18]_i_1_n_0 ;
  wire \wait_counter[19]_i_1_n_0 ;
  wire \wait_counter[1]_i_1_n_0 ;
  wire \wait_counter[20]_i_1_n_0 ;
  wire \wait_counter[21]_i_1_n_0 ;
  wire \wait_counter[22]_i_1_n_0 ;
  wire \wait_counter[23]_i_1_n_0 ;
  wire \wait_counter[24]_i_1_n_0 ;
  wire \wait_counter[25]_i_1_n_0 ;
  wire \wait_counter[26]_i_1_n_0 ;
  wire \wait_counter[27]_i_1_n_0 ;
  wire \wait_counter[28]_i_1_n_0 ;
  wire \wait_counter[29]_i_1_n_0 ;
  wire \wait_counter[2]_i_1_n_0 ;
  wire \wait_counter[30]_i_1_n_0 ;
  wire \wait_counter[31]_i_1_n_0 ;
  wire \wait_counter[31]_i_2_n_0 ;
  wire \wait_counter[31]_i_3_n_0 ;
  wire \wait_counter[31]_i_4_n_0 ;
  wire \wait_counter[31]_i_5_n_0 ;
  wire \wait_counter[31]_i_6_n_0 ;
  wire \wait_counter[31]_i_7_n_0 ;
  wire \wait_counter[31]_i_8_n_0 ;
  wire \wait_counter[3]_i_1_n_0 ;
  wire \wait_counter[4]_i_1_n_0 ;
  wire \wait_counter[5]_i_1_n_0 ;
  wire \wait_counter[6]_i_1_n_0 ;
  wire \wait_counter[7]_i_1_n_0 ;
  wire \wait_counter[8]_i_1_n_0 ;
  wire \wait_counter[9]_i_1_n_0 ;
  wire [7:0]write_data;
  wire [3:2]NLW_sck_count0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_sck_count0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_timeout_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_timeout_counter0_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_wait_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_wait_counter0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \addr_buf[23]_i_1 
       (.I0(cmd_erase_sector),
        .I1(cmd_program),
        .I2(cmd_read),
        .I3(cmd_read_id),
        .I4(first_access),
        .I5(busy_i_4_n_0),
        .O(\addr_buf[23]_i_1_n_0 ));
  FDCE \addr_buf_reg[0] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[0]),
        .Q(\addr_buf_reg_n_0_[0] ));
  FDCE \addr_buf_reg[10] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[10]),
        .Q(p_1_in[2]));
  FDCE \addr_buf_reg[11] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[11]),
        .Q(p_1_in[3]));
  FDCE \addr_buf_reg[12] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[12]),
        .Q(p_1_in[4]));
  FDCE \addr_buf_reg[13] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[13]),
        .Q(p_1_in[5]));
  FDCE \addr_buf_reg[14] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[14]),
        .Q(p_1_in[6]));
  FDCE \addr_buf_reg[15] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[15]),
        .Q(p_1_in[7]));
  FDCE \addr_buf_reg[16] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[16]),
        .Q(p_2_in[0]));
  FDCE \addr_buf_reg[17] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[17]),
        .Q(p_2_in[1]));
  FDCE \addr_buf_reg[18] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[18]),
        .Q(p_2_in[2]));
  FDCE \addr_buf_reg[19] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[19]),
        .Q(p_2_in[3]));
  FDCE \addr_buf_reg[1] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[1]),
        .Q(\addr_buf_reg_n_0_[1] ));
  FDCE \addr_buf_reg[20] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[20]),
        .Q(p_2_in[4]));
  FDCE \addr_buf_reg[21] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[21]),
        .Q(p_2_in[5]));
  FDCE \addr_buf_reg[22] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[22]),
        .Q(p_2_in[6]));
  FDCE \addr_buf_reg[23] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[23]),
        .Q(p_2_in[7]));
  FDCE \addr_buf_reg[2] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[2]),
        .Q(\addr_buf_reg_n_0_[2] ));
  FDCE \addr_buf_reg[3] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[3]),
        .Q(\addr_buf_reg_n_0_[3] ));
  FDCE \addr_buf_reg[4] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[4]),
        .Q(\addr_buf_reg_n_0_[4] ));
  FDCE \addr_buf_reg[5] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[5]),
        .Q(\addr_buf_reg_n_0_[5] ));
  FDCE \addr_buf_reg[6] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[6]),
        .Q(\addr_buf_reg_n_0_[6] ));
  FDCE \addr_buf_reg[7] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[7]),
        .Q(\addr_buf_reg_n_0_[7] ));
  FDCE \addr_buf_reg[8] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[8]),
        .Q(p_1_in[0]));
  FDCE \addr_buf_reg[9] 
       (.C(clk),
        .CE(\addr_buf[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(address[9]),
        .Q(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0E0A0A0A)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter[1]_i_2_n_0 ),
        .I1(\bit_counter[0]_i_2_n_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(sck_toggle_reg_n_0),
        .I5(spi_sck_reg_0),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \bit_counter[0]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\bit_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC00A)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter[1]_i_2_n_0 ),
        .I1(\bit_counter[5]_i_9_n_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000A800)) 
    \bit_counter[1]_i_2 
       (.I0(\bit_counter[0]_i_2_n_0 ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(sck_toggle_reg_n_0),
        .I4(spi_sck_reg_0),
        .I5(\bit_counter[2]_i_3_n_0 ),
        .O(\bit_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A00FA0A0A00C)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter[5]_i_9_n_0 ),
        .I1(\bit_counter[2]_i_2_n_0 ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(\bit_counter[2]_i_3_n_0 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044444000004440)) 
    \bit_counter[2]_i_2 
       (.I0(\bit_counter[5]_i_14_n_0 ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\bit_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000A800)) 
    \bit_counter[2]_i_3 
       (.I0(\bit_counter[0]_i_2_n_0 ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(sck_toggle_reg_n_0),
        .I4(spi_sck_reg_0),
        .I5(\bit_counter[5]_i_8_n_0 ),
        .O(\bit_counter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAB)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[3]_i_2_n_0 ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(\bit_counter[3]_i_3_n_0 ),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000A080FAFA0)) 
    \bit_counter[3]_i_2 
       (.I0(\bit_counter[5]_i_14_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\bit_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h001000D0)) 
    \bit_counter[3]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\bit_counter[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA00FA00C)) 
    \bit_counter[4]_i_1 
       (.I0(\bit_counter[5]_i_9_n_0 ),
        .I1(\bit_counter[4]_i_2_n_0 ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter[5]_i_10_n_0 ),
        .I4(\bit_counter[5]_i_8_n_0 ),
        .O(\bit_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044444000004440)) 
    \bit_counter[4]_i_2 
       (.I0(\bit_counter[5]_i_14_n_0 ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\bit_counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \bit_counter[5]_i_1 
       (.I0(\bit_counter[5]_i_3_n_0 ),
        .I1(\bit_counter[5]_i_4_n_0 ),
        .I2(\state[5]_i_7_n_0 ),
        .I3(\bit_counter[5]_i_5_n_0 ),
        .I4(\bit_counter[5]_i_6_n_0 ),
        .I5(\bit_counter[5]_i_7_n_0 ),
        .O(\bit_counter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[5]_i_10 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000005050A0F0E)) 
    \bit_counter[5]_i_11 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\bit_counter[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000400040C)) 
    \bit_counter[5]_i_12 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\bit_counter[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \bit_counter[5]_i_13 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .O(\bit_counter[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bit_counter[5]_i_14 
       (.I0(spi_sck_reg_0),
        .I1(sck_toggle_reg_n_0),
        .O(\bit_counter[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hCCC0000A)) 
    \bit_counter[5]_i_2 
       (.I0(\bit_counter[5]_i_8_n_0 ),
        .I1(\bit_counter[5]_i_9_n_0 ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter[5]_i_10_n_0 ),
        .I4(\bit_counter_reg_n_0_[5] ),
        .O(\bit_counter[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_counter[5]_i_3 
       (.I0(\read_data[7]_i_4_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .O(\bit_counter[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAFFF0000000C)) 
    \bit_counter[5]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[4]_i_4_n_0 ),
        .I2(byte_counter[0]),
        .I3(byte_counter[1]),
        .I4(byte_counter[2]),
        .I5(\jedec_id[15]_i_2_n_0 ),
        .O(\bit_counter[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000C300040004)) 
    \bit_counter[5]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\bit_counter[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \bit_counter[5]_i_6 
       (.I0(spi_sck_reg_0),
        .I1(sck_toggle_reg_n_0),
        .I2(\read_data[7]_i_4_n_0 ),
        .I3(\bit_counter[5]_i_11_n_0 ),
        .O(\bit_counter[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAEAEAE)) 
    \bit_counter[5]_i_7 
       (.I0(\bit_counter[5]_i_12_n_0 ),
        .I1(\bit_counter[5]_i_13_n_0 ),
        .I2(\read_data[7]_i_4_n_0 ),
        .I3(\state[3]_i_5_n_0 ),
        .I4(\jedec_id[15]_i_3_n_0 ),
        .I5(\byte_counter[2]_i_5_n_0 ),
        .O(\bit_counter[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAFEAB085)) 
    \bit_counter[5]_i_8 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\bit_counter[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFEAB085AFEFFA8F)) 
    \bit_counter[5]_i_9 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\bit_counter[5]_i_14_n_0 ),
        .O(\bit_counter[5]_i_9_n_0 ));
  FDCE \bit_counter_reg[0] 
       (.C(clk),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ));
  FDCE \bit_counter_reg[1] 
       (.C(clk),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ));
  FDCE \bit_counter_reg[2] 
       (.C(clk),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ));
  FDCE \bit_counter_reg[3] 
       (.C(clk),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ));
  FDCE \bit_counter_reg[4] 
       (.C(clk),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\bit_counter[4]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[4] ));
  FDCE \bit_counter_reg[5] 
       (.C(clk),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\bit_counter[5]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'h2222F3FF22220000)) 
    busy_i_1
       (.I0(busy_i_2_n_0),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(busy_i_3_n_0),
        .I4(busy_i_4_n_0),
        .I5(busy),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    busy_i_2
       (.I0(cmd_program),
        .I1(cmd_erase_sector),
        .I2(cmd_read),
        .I3(cmd_read_id),
        .I4(first_access),
        .O(busy_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h04)) 
    busy_i_3
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .O(busy_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    busy_i_4
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(busy_i_4_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(busy_i_1_n_0),
        .Q(busy));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \byte_counter[0]_i_1 
       (.I0(\byte_counter[0]_i_2_n_0 ),
        .I1(\byte_counter[0]_i_3_n_0 ),
        .I2(\byte_counter[0]_i_4_n_0 ),
        .I3(\byte_counter[2]_i_2_n_0 ),
        .I4(byte_counter[0]),
        .O(\byte_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAA000000000000)) 
    \byte_counter[0]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\jedec_id[23]_i_2_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\byte_counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF020002)) 
    \byte_counter[0]_i_3 
       (.I0(\shift_out_data[4]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\byte_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000110011)) 
    \byte_counter[0]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(byte_counter[0]),
        .I2(\jedec_id[23]_i_2_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\byte_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEA0000)) 
    \byte_counter[1]_i_1 
       (.I0(\byte_counter[1]_i_2_n_0 ),
        .I1(\byte_counter[1]_i_3_n_0 ),
        .I2(\jedec_id[15]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\byte_counter[2]_i_2_n_0 ),
        .I5(byte_counter[1]),
        .O(\byte_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFCA8BEAABCA8)) 
    \byte_counter[1]_i_2 
       (.I0(\byte_counter[1]_i_4_n_0 ),
        .I1(byte_counter[0]),
        .I2(byte_counter[1]),
        .I3(\byte_counter[1]_i_5_n_0 ),
        .I4(byte_counter[2]),
        .I5(\state_reg_n_0_[1] ),
        .O(\byte_counter[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \byte_counter[1]_i_3 
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .O(\byte_counter[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \byte_counter[1]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\byte_counter[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_counter[1]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\byte_counter[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0111FFFF10000000)) 
    \byte_counter[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(byte_counter[1]),
        .I3(byte_counter[0]),
        .I4(\byte_counter[2]_i_2_n_0 ),
        .I5(byte_counter[2]),
        .O(\byte_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \byte_counter[2]_i_2 
       (.I0(\byte_counter[2]_i_3_n_0 ),
        .I1(\byte_counter[2]_i_4_n_0 ),
        .I2(spi_cs_n_i_6_n_0),
        .I3(\wait_counter[31]_i_3_n_0 ),
        .I4(\byte_counter[2]_i_5_n_0 ),
        .I5(\byte_counter[2]_i_6_n_0 ),
        .O(\byte_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F222)) 
    \byte_counter[2]_i_3 
       (.I0(\state[4]_i_4_n_0 ),
        .I1(\byte_counter[1]_i_3_n_0 ),
        .I2(\jedec_id[15]_i_2_n_0 ),
        .I3(\byte_counter[2]_i_7_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\read_data[7]_i_4_n_0 ),
        .O(\byte_counter[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[2]_i_4 
       (.I0(spi_cs_n_i_16_n_0),
        .I1(\byte_counter[2]_i_8_n_0 ),
        .I2(spi_cs_n_i_17_n_0),
        .I3(\byte_counter[2]_i_9_n_0 ),
        .O(\byte_counter[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000808)) 
    \byte_counter[2]_i_5 
       (.I0(\state[4]_i_4_n_0 ),
        .I1(\jedec_id[15]_i_3_n_0 ),
        .I2(\read_data[7]_i_4_n_0 ),
        .I3(byte_counter[1]),
        .I4(byte_counter[2]),
        .I5(byte_counter[0]),
        .O(\byte_counter[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAB0000AAAA)) 
    \byte_counter[2]_i_6 
       (.I0(spi_cs_n_i_20_n_0),
        .I1(\read_data[7]_i_4_n_0 ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state[5]_i_12_n_0 ),
        .I4(\read_data[7]_i_3_n_0 ),
        .I5(\byte_counter[2]_i_7_n_0 ),
        .O(\byte_counter[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \byte_counter[2]_i_7 
       (.I0(byte_counter[0]),
        .I1(byte_counter[2]),
        .I2(byte_counter[1]),
        .O(\byte_counter[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[2]_i_8 
       (.I0(wait_counter[1]),
        .I1(wait_counter[0]),
        .I2(wait_counter[3]),
        .I3(wait_counter[2]),
        .O(\byte_counter[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[2]_i_9 
       (.I0(wait_counter[9]),
        .I1(wait_counter[8]),
        .I2(wait_counter[11]),
        .I3(wait_counter[10]),
        .O(\byte_counter[2]_i_9_n_0 ));
  FDCE \byte_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\byte_counter[0]_i_1_n_0 ),
        .Q(byte_counter[0]));
  FDCE \byte_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\byte_counter[1]_i_1_n_0 ),
        .Q(byte_counter[1]));
  FDCE \byte_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\byte_counter[2]_i_1_n_0 ),
        .Q(byte_counter[2]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \data_buf[7]_i_1 
       (.I0(busy_i_4_n_0),
        .I1(cmd_program),
        .I2(cmd_read_id),
        .I3(cmd_read),
        .I4(first_access),
        .O(\data_buf[7]_i_1_n_0 ));
  FDCE \data_buf_reg[0] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[0]),
        .Q(data_buf[0]));
  FDCE \data_buf_reg[1] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[1]),
        .Q(data_buf[1]));
  FDCE \data_buf_reg[2] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[2]),
        .Q(data_buf[2]));
  FDCE \data_buf_reg[3] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[3]),
        .Q(data_buf[3]));
  FDCE \data_buf_reg[4] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[4]),
        .Q(data_buf[4]));
  FDCE \data_buf_reg[5] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[5]),
        .Q(data_buf[5]));
  FDCE \data_buf_reg[6] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[6]),
        .Q(data_buf[6]));
  FDCE \data_buf_reg[7] 
       (.C(clk),
        .CE(\data_buf[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(write_data[7]),
        .Q(data_buf[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFD00200000)) 
    done_i_1
       (.I0(\jedec_id[15]_i_3_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(done),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(done_i_1_n_0),
        .Q(done));
  LUT6 #(
    .INIT(64'hEEEF4F4FEEE04040)) 
    error_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(error_i_2_n_0),
        .I3(error_i_3_n_0),
        .I4(error_i_4_n_0),
        .I5(error),
        .O(error_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    error_i_10
       (.I0(timeout_counter[25]),
        .I1(timeout_counter[20]),
        .I2(timeout_counter[21]),
        .I3(timeout_counter[23]),
        .I4(timeout_counter[22]),
        .I5(timeout_counter[19]),
        .O(error_i_10_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_i_11
       (.I0(timeout_counter[13]),
        .I1(timeout_counter[12]),
        .I2(timeout_counter[15]),
        .I3(timeout_counter[14]),
        .O(error_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_i_12
       (.I0(timeout_counter[9]),
        .I1(timeout_counter[8]),
        .I2(timeout_counter[11]),
        .I3(timeout_counter[10]),
        .O(error_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_i_13
       (.I0(timeout_counter[2]),
        .I1(timeout_counter[1]),
        .I2(timeout_counter[4]),
        .I3(timeout_counter[3]),
        .O(error_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000020000000001)) 
    error_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(error_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    error_i_3
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(error_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    error_i_4
       (.I0(error_i_5_n_0),
        .I1(error_i_6_n_0),
        .I2(error_i_7_n_0),
        .I3(error_i_8_n_0),
        .I4(timeout_counter[7]),
        .I5(error_i_9_n_0),
        .O(error_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    error_i_5
       (.I0(timeout_counter[18]),
        .I1(error_i_10_n_0),
        .I2(timeout_counter[25]),
        .I3(timeout_counter[24]),
        .O(error_i_5_n_0));
  LUT5 #(
    .INIT(32'hF4000000)) 
    error_i_6
       (.I0(error_i_11_n_0),
        .I1(error_i_12_n_0),
        .I2(timeout_counter[16]),
        .I3(error_i_10_n_0),
        .I4(timeout_counter[17]),
        .O(error_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    error_i_7
       (.I0(timeout_counter[30]),
        .I1(timeout_counter[31]),
        .I2(timeout_counter[28]),
        .I3(timeout_counter[29]),
        .I4(timeout_counter[27]),
        .I5(timeout_counter[26]),
        .O(error_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_i_8
       (.I0(error_i_13_n_0),
        .I1(timeout_counter[0]),
        .I2(timeout_counter[5]),
        .I3(timeout_counter[6]),
        .O(error_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    error_i_9
       (.I0(timeout_counter[17]),
        .I1(error_i_10_n_0),
        .I2(timeout_counter[14]),
        .I3(timeout_counter[15]),
        .I4(timeout_counter[12]),
        .I5(timeout_counter[13]),
        .O(error_i_9_n_0));
  FDCE error_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(error_i_1_n_0),
        .Q(error));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    first_access_i_1
       (.I0(first_access),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\jedec_id[15]_i_3_n_0 ),
        .O(first_access_i_1_n_0));
  FDPE first_access_reg
       (.C(clk),
        .CE(1'b1),
        .D(first_access_i_1_n_0),
        .PRE(\read_data[7]_i_2_n_0 ),
        .Q(first_access));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \jedec_id[15]_i_1 
       (.I0(\jedec_id[15]_i_2_n_0 ),
        .I1(byte_counter[2]),
        .I2(byte_counter[1]),
        .I3(byte_counter[0]),
        .I4(\read_data[7]_i_4_n_0 ),
        .I5(\jedec_id[15]_i_3_n_0 ),
        .O(\jedec_id[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \jedec_id[15]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\jedec_id[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \jedec_id[15]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\jedec_id[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \jedec_id[23]_i_1 
       (.I0(\jedec_id[23]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\jedec_id[23]_i_3_n_0 ),
        .O(\jedec_id[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \jedec_id[23]_i_2 
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .O(\jedec_id[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \jedec_id[23]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\read_data[7]_i_4_n_0 ),
        .O(\jedec_id[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \jedec_id[7]_i_1 
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .I3(\jedec_id[15]_i_2_n_0 ),
        .I4(\read_data[7]_i_4_n_0 ),
        .I5(\jedec_id[15]_i_3_n_0 ),
        .O(\jedec_id[7]_i_1_n_0 ));
  FDCE \jedec_id_reg[0] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[0]),
        .Q(jedec_id[0]));
  FDCE \jedec_id_reg[10] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[2]),
        .Q(jedec_id[10]));
  FDCE \jedec_id_reg[11] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[3]),
        .Q(jedec_id[11]));
  FDCE \jedec_id_reg[12] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[4]),
        .Q(jedec_id[12]));
  FDCE \jedec_id_reg[13] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[5]),
        .Q(jedec_id[13]));
  FDCE \jedec_id_reg[14] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[6]),
        .Q(jedec_id[14]));
  FDCE \jedec_id_reg[15] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[7]),
        .Q(jedec_id[15]));
  FDCE \jedec_id_reg[16] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[0]),
        .Q(jedec_id[16]));
  FDCE \jedec_id_reg[17] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[1]),
        .Q(jedec_id[17]));
  FDCE \jedec_id_reg[18] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[2]),
        .Q(jedec_id[18]));
  FDCE \jedec_id_reg[19] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[3]),
        .Q(jedec_id[19]));
  FDCE \jedec_id_reg[1] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[1]),
        .Q(jedec_id[1]));
  FDCE \jedec_id_reg[20] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[4]),
        .Q(jedec_id[20]));
  FDCE \jedec_id_reg[21] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[5]),
        .Q(jedec_id[21]));
  FDCE \jedec_id_reg[22] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[6]),
        .Q(jedec_id[22]));
  FDCE \jedec_id_reg[23] 
       (.C(clk),
        .CE(\jedec_id[23]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[7]),
        .Q(jedec_id[23]));
  FDCE \jedec_id_reg[2] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[2]),
        .Q(jedec_id[2]));
  FDCE \jedec_id_reg[3] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[3]),
        .Q(jedec_id[3]));
  FDCE \jedec_id_reg[4] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[4]),
        .Q(jedec_id[4]));
  FDCE \jedec_id_reg[5] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[5]),
        .Q(jedec_id[5]));
  FDCE \jedec_id_reg[6] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[6]),
        .Q(jedec_id[6]));
  FDCE \jedec_id_reg[7] 
       (.C(clk),
        .CE(\jedec_id[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[7]),
        .Q(jedec_id[7]));
  FDCE \jedec_id_reg[8] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[0]),
        .Q(jedec_id[8]));
  FDCE \jedec_id_reg[9] 
       (.C(clk),
        .CE(\jedec_id[15]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[1]),
        .Q(jedec_id[9]));
  LUT6 #(
    .INIT(64'hFFFFAAFEAAFEAAFE)) 
    load_shift_out_i_1
       (.I0(\bit_counter[5]_i_7_n_0 ),
        .I1(load_shift_out_i_2_n_0),
        .I2(load_shift_out_i_3_n_0),
        .I3(\state[5]_i_7_n_0 ),
        .I4(\bit_counter[5]_i_4_n_0 ),
        .I5(\bit_counter[5]_i_3_n_0 ),
        .O(load_shift_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02000002)) 
    load_shift_out_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(load_shift_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    load_shift_out_i_3
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(load_shift_out_i_3_n_0));
  FDCE load_shift_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(load_shift_out_i_1_n_0),
        .Q(load_shift_out_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \read_data[7]_i_1 
       (.I0(\read_data[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\read_data[7]_i_4_n_0 ),
        .O(\read_data[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_data[7]_i_2 
       (.I0(rst_n),
        .O(\read_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \read_data[7]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\read_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_data[7]_i_4 
       (.I0(\bit_counter_reg_n_0_[5] ),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[3] ),
        .O(\read_data[7]_i_4_n_0 ));
  FDCE \read_data_reg[0] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[0]),
        .Q(read_data[0]));
  FDCE \read_data_reg[1] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[1]),
        .Q(read_data[1]));
  FDCE \read_data_reg[2] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[2]),
        .Q(read_data[2]));
  FDCE \read_data_reg[3] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[3]),
        .Q(read_data[3]));
  FDCE \read_data_reg[4] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[4]),
        .Q(read_data[4]));
  FDCE \read_data_reg[5] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[5]),
        .Q(read_data[5]));
  FDCE \read_data_reg[6] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[6]),
        .Q(read_data[6]));
  FDCE \read_data_reg[7] 
       (.C(clk),
        .CE(\read_data[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[7]),
        .Q(read_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \return_state[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(cmd_program),
        .O(\return_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \return_state[1]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\return_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \return_state[2]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(cmd_program),
        .O(\return_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F0F0F0F0)) 
    \return_state[4]_i_1 
       (.I0(\return_state[4]_i_3_n_0 ),
        .I1(\state[4]_i_4_n_0 ),
        .I2(\return_state[4]_i_4_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[3]_i_3_n_0 ),
        .I5(\jedec_id[23]_i_3_n_0 ),
        .O(\return_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \return_state[4]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\return_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \return_state[4]_i_3 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(byte_counter[2]),
        .O(\return_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000000)) 
    \return_state[4]_i_4 
       (.I0(cmd_read_id),
        .I1(cmd_read),
        .I2(first_access),
        .I3(cmd_program),
        .I4(cmd_erase_sector),
        .I5(busy_i_4_n_0),
        .O(\return_state[4]_i_4_n_0 ));
  FDCE \return_state_reg[0] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\return_state[0]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[0] ));
  FDCE \return_state_reg[1] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\return_state[1]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[1] ));
  FDCE \return_state_reg[2] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\return_state[2]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[2] ));
  FDCE \return_state_reg[4] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\return_state[4]_i_2_n_0 ),
        .Q(\return_state_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sck_count0_carry
       (.CI(1'b0),
        .CO({sck_count0_carry_n_0,sck_count0_carry_n_1,sck_count0_carry_n_2,sck_count0_carry_n_3}),
        .CYINIT(sck_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sck_count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sck_count0_carry__0
       (.CI(sck_count0_carry_n_0),
        .CO({sck_count0_carry__0_n_0,sck_count0_carry__0_n_1,sck_count0_carry__0_n_2,sck_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sck_count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sck_count0_carry__1
       (.CI(sck_count0_carry__0_n_0),
        .CO({sck_count0_carry__1_n_0,sck_count0_carry__1_n_1,sck_count0_carry__1_n_2,sck_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sck_count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sck_count0_carry__2
       (.CI(sck_count0_carry__1_n_0),
        .CO({NLW_sck_count0_carry__2_CO_UNCONNECTED[3:2],sck_count0_carry__2_n_2,sck_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sck_count0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,sck_count[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sck_count[0]_i_1 
       (.I0(sck_count[0]),
        .I1(sck_enable_reg_n_0),
        .I2(\sck_count[15]_i_2_n_0 ),
        .O(\sck_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[10]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[10]),
        .O(\sck_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[11]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[11]),
        .O(\sck_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[12]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[12]),
        .O(\sck_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[13]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[13]),
        .O(\sck_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[14]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[14]),
        .O(\sck_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[15]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[15]),
        .O(\sck_count[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sck_count[15]_i_2 
       (.I0(\sck_count[15]_i_3_n_0 ),
        .I1(\sck_count[15]_i_4_n_0 ),
        .I2(sck_count[15]),
        .I3(sck_count[14]),
        .I4(sck_count[1]),
        .I5(\sck_count[15]_i_5_n_0 ),
        .O(\sck_count[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sck_count[15]_i_3 
       (.I0(sck_count[7]),
        .I1(sck_count[6]),
        .I2(sck_count[9]),
        .I3(sck_count[8]),
        .O(\sck_count[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sck_count[15]_i_4 
       (.I0(sck_count[2]),
        .I1(sck_count[3]),
        .I2(sck_count[5]),
        .I3(sck_count[4]),
        .O(\sck_count[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sck_count[15]_i_5 
       (.I0(sck_count[11]),
        .I1(sck_count[10]),
        .I2(sck_count[13]),
        .I3(sck_count[12]),
        .O(\sck_count[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[1]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[1]),
        .O(\sck_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[2]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[2]),
        .O(\sck_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[3]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[3]),
        .O(\sck_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[4]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[4]),
        .O(\sck_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[5]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[5]),
        .O(\sck_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[6]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[6]),
        .O(\sck_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[7]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[7]),
        .O(\sck_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[8]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[8]),
        .O(\sck_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sck_count[9]_i_1 
       (.I0(sck_count[0]),
        .I1(\sck_count[15]_i_2_n_0 ),
        .I2(sck_enable_reg_n_0),
        .I3(data0[9]),
        .O(\sck_count[9]_i_1_n_0 ));
  FDCE \sck_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[0]_i_1_n_0 ),
        .Q(sck_count[0]));
  FDCE \sck_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[10]_i_1_n_0 ),
        .Q(sck_count[10]));
  FDCE \sck_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[11]_i_1_n_0 ),
        .Q(sck_count[11]));
  FDCE \sck_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[12]_i_1_n_0 ),
        .Q(sck_count[12]));
  FDCE \sck_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[13]_i_1_n_0 ),
        .Q(sck_count[13]));
  FDCE \sck_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[14]_i_1_n_0 ),
        .Q(sck_count[14]));
  FDCE \sck_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[15]_i_1_n_0 ),
        .Q(sck_count[15]));
  FDCE \sck_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[1]_i_1_n_0 ),
        .Q(sck_count[1]));
  FDCE \sck_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[2]_i_1_n_0 ),
        .Q(sck_count[2]));
  FDCE \sck_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[3]_i_1_n_0 ),
        .Q(sck_count[3]));
  FDCE \sck_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[4]_i_1_n_0 ),
        .Q(sck_count[4]));
  FDCE \sck_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[5]_i_1_n_0 ),
        .Q(sck_count[5]));
  FDCE \sck_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[6]_i_1_n_0 ),
        .Q(sck_count[6]));
  FDCE \sck_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[7]_i_1_n_0 ),
        .Q(sck_count[7]));
  FDCE \sck_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[8]_i_1_n_0 ),
        .Q(sck_count[8]));
  FDCE \sck_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\sck_count[9]_i_1_n_0 ),
        .Q(sck_count[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    sck_enable_i_1
       (.I0(sck_enable_i_2_n_0),
        .I1(spi_cs_n_i_3_n_0),
        .I2(sck_enable_reg_n_0),
        .O(sck_enable_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0330C370)) 
    sck_enable_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(sck_enable_i_2_n_0));
  FDCE sck_enable_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(sck_enable_i_1_n_0),
        .Q(sck_enable_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h10)) 
    sck_toggle_i_1
       (.I0(\sck_count[15]_i_2_n_0 ),
        .I1(sck_count[0]),
        .I2(sck_enable_reg_n_0),
        .O(sck_toggle16_out));
  FDCE sck_toggle_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(sck_toggle16_out),
        .Q(sck_toggle_reg_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \shift_in[7]_i_1 
       (.I0(load_shift_out_reg_n_0),
        .I1(sck_enable_reg_n_0),
        .I2(sck_toggle_reg_n_0),
        .I3(spi_sck_reg_0),
        .O(shift_in_0));
  FDCE \shift_in_reg[0] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(spi_miso),
        .Q(shift_in[0]));
  FDCE \shift_in_reg[1] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[0]),
        .Q(shift_in[1]));
  FDCE \shift_in_reg[2] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[1]),
        .Q(shift_in[2]));
  FDCE \shift_in_reg[3] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[2]),
        .Q(shift_in[3]));
  FDCE \shift_in_reg[4] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[3]),
        .Q(shift_in[4]));
  FDCE \shift_in_reg[5] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[4]),
        .Q(shift_in[5]));
  FDCE \shift_in_reg[6] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[5]),
        .Q(shift_in[6]));
  FDCE \shift_in_reg[7] 
       (.C(clk),
        .CE(shift_in_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(shift_in[6]),
        .Q(shift_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_out[0]_i_1 
       (.I0(load_shift_out_reg_n_0),
        .I1(shift_out_data[0]),
        .O(\shift_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[1]_i_1 
       (.I0(shift_out_data[1]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[0]),
        .O(\shift_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[2]_i_1 
       (.I0(shift_out_data[2]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[1]),
        .O(\shift_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[3]_i_1 
       (.I0(shift_out_data[3]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[2]),
        .O(\shift_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[4]_i_1 
       (.I0(shift_out_data[4]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[3]),
        .O(\shift_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[5]_i_1 
       (.I0(shift_out_data[5]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[4]),
        .O(\shift_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[6]_i_1 
       (.I0(shift_out_data[6]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[5]),
        .O(\shift_out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \shift_out[7]_i_1 
       (.I0(spi_sck_reg_0),
        .I1(sck_toggle_reg_n_0),
        .I2(sck_enable_reg_n_0),
        .I3(load_shift_out_reg_n_0),
        .O(\shift_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_out[7]_i_2 
       (.I0(shift_out_data[7]),
        .I1(load_shift_out_reg_n_0),
        .I2(shift_out[6]),
        .O(\shift_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00D0)) 
    \shift_out_data[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\shift_out_data[0]_i_2_n_0 ),
        .I5(\shift_out_data[0]_i_3_n_0 ),
        .O(\shift_out_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \shift_out_data[0]_i_2 
       (.I0(data_buf[0]),
        .I1(\shift_out_data[3]_i_3_n_0 ),
        .I2(\return_state[4]_i_3_n_0 ),
        .I3(\addr_buf_reg_n_0_[0] ),
        .I4(\shift_out_data[2]_i_5_n_0 ),
        .O(\shift_out_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFAAAEAEA)) 
    \shift_out_data[0]_i_3 
       (.I0(\shift_out_data[3]_i_4_n_0 ),
        .I1(p_2_in[0]),
        .I2(\shift_out_data[2]_i_6_n_0 ),
        .I3(p_1_in[0]),
        .I4(byte_counter[0]),
        .I5(\shift_out_data[4]_i_3_n_0 ),
        .O(\shift_out_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
    \shift_out_data[1]_i_1 
       (.I0(\shift_out_data[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\shift_out_data[1]_i_3_n_0 ),
        .I5(\shift_out_data[1]_i_4_n_0 ),
        .O(\shift_out_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0332003200320032)) 
    \shift_out_data[1]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\shift_out_data[4]_i_3_n_0 ),
        .I5(\addr_buf_reg_n_0_[1] ),
        .O(\shift_out_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFAAAEAEA)) 
    \shift_out_data[1]_i_3 
       (.I0(\shift_out_data[3]_i_4_n_0 ),
        .I1(p_2_in[1]),
        .I2(\shift_out_data[1]_i_5_n_0 ),
        .I3(p_1_in[1]),
        .I4(byte_counter[0]),
        .I5(\shift_out_data[4]_i_3_n_0 ),
        .O(\shift_out_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \shift_out_data[1]_i_4 
       (.I0(\return_state[4]_i_3_n_0 ),
        .I1(data_buf[1]),
        .I2(\state[5]_i_12_n_0 ),
        .I3(\shift_out_data[1]_i_6_n_0 ),
        .I4(\shift_out_data[1]_i_7_n_0 ),
        .I5(\addr_buf_reg_n_0_[1] ),
        .O(\shift_out_data[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h03530F53)) 
    \shift_out_data[1]_i_5 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\shift_out_data[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h040F)) 
    \shift_out_data[1]_i_6 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\shift_out_data[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \shift_out_data[1]_i_7 
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .O(\shift_out_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    \shift_out_data[2]_i_1 
       (.I0(\shift_out_data[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\shift_out_data[2]_i_3_n_0 ),
        .I4(\shift_out_data[2]_i_4_n_0 ),
        .I5(data_buf[2]),
        .O(\shift_out_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF101410141014)) 
    \shift_out_data[2]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\addr_buf_reg_n_0_[2] ),
        .I5(\shift_out_data[2]_i_5_n_0 ),
        .O(\shift_out_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000088C0)) 
    \shift_out_data[2]_i_3 
       (.I0(p_1_in[2]),
        .I1(\shift_out_data[2]_i_6_n_0 ),
        .I2(p_2_in[2]),
        .I3(byte_counter[0]),
        .I4(byte_counter[1]),
        .I5(byte_counter[2]),
        .O(\shift_out_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001000100)) 
    \shift_out_data[2]_i_4 
       (.I0(\read_data[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(byte_counter[2]),
        .I4(byte_counter[0]),
        .I5(byte_counter[1]),
        .O(\shift_out_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00200020FFF00020)) 
    \shift_out_data[2]_i_5 
       (.I0(\shift_out_data[7]_i_5_n_0 ),
        .I1(byte_counter[0]),
        .I2(byte_counter[1]),
        .I3(byte_counter[2]),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\shift_out_data[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h26662626)) 
    \shift_out_data[2]_i_6 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\shift_out_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \shift_out_data[3]_i_1 
       (.I0(\shift_out_data[3]_i_2_n_0 ),
        .I1(\shift_out_data[7]_i_2_n_0 ),
        .I2(\addr_buf_reg_n_0_[3] ),
        .I3(data_buf[3]),
        .I4(\shift_out_data[3]_i_3_n_0 ),
        .I5(\return_state[4]_i_3_n_0 ),
        .O(\shift_out_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFAAAEAEA)) 
    \shift_out_data[3]_i_2 
       (.I0(\shift_out_data[3]_i_4_n_0 ),
        .I1(p_2_in[3]),
        .I2(\shift_out_data[4]_i_4_n_0 ),
        .I3(p_1_in[3]),
        .I4(byte_counter[0]),
        .I5(\shift_out_data[4]_i_3_n_0 ),
        .O(\shift_out_data[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \shift_out_data[3]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\shift_out_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \shift_out_data[3]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .O(\shift_out_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAAAAABAAAAAA)) 
    \shift_out_data[4]_i_1 
       (.I0(\shift_out_data[4]_i_2_n_0 ),
        .I1(\shift_out_data[4]_i_3_n_0 ),
        .I2(byte_counter[0]),
        .I3(p_2_in[4]),
        .I4(\shift_out_data[4]_i_4_n_0 ),
        .I5(p_1_in[4]),
        .O(\shift_out_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \shift_out_data[4]_i_2 
       (.I0(\shift_out_data[5]_i_3_n_0 ),
        .I1(\state[5]_i_9_n_0 ),
        .I2(\shift_out_data[2]_i_4_n_0 ),
        .I3(data_buf[4]),
        .I4(\addr_buf_reg_n_0_[4] ),
        .I5(\shift_out_data[7]_i_2_n_0 ),
        .O(\shift_out_data[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \shift_out_data[4]_i_3 
       (.I0(byte_counter[1]),
        .I1(byte_counter[2]),
        .O(\shift_out_data[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h04442626)) 
    \shift_out_data[4]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\shift_out_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \shift_out_data[5]_i_1 
       (.I0(\shift_out_data[5]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\shift_out_data[5]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\shift_out_data[5]_i_4_n_0 ),
        .I5(\shift_out_data[5]_i_5_n_0 ),
        .O(\shift_out_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000F888F000F)) 
    \shift_out_data[5]_i_2 
       (.I0(\addr_buf_reg_n_0_[5] ),
        .I1(\shift_out_data[4]_i_3_n_0 ),
        .I2(\shift_out_data[5]_i_6_n_0 ),
        .I3(\state[5]_i_9_n_0 ),
        .I4(\shift_out_data[6]_i_6_n_0 ),
        .I5(\shift_out_data[5]_i_7_n_0 ),
        .O(\shift_out_data[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_out_data[5]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\shift_out_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000AFC00000A0C)) 
    \shift_out_data[5]_i_4 
       (.I0(\addr_buf_reg_n_0_[5] ),
        .I1(p_2_in[5]),
        .I2(byte_counter[0]),
        .I3(byte_counter[1]),
        .I4(byte_counter[2]),
        .I5(p_1_in[5]),
        .O(\shift_out_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1010100010001000)) 
    \shift_out_data[5]_i_5 
       (.I0(\read_data[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\shift_out_data[5]_i_4_n_0 ),
        .I4(\return_state[4]_i_3_n_0 ),
        .I5(data_buf[5]),
        .O(\shift_out_data[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \shift_out_data[5]_i_6 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\shift_out_data[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    \shift_out_data[5]_i_7 
       (.I0(p_1_in[5]),
        .I1(byte_counter[2]),
        .I2(byte_counter[1]),
        .I3(byte_counter[0]),
        .I4(p_2_in[5]),
        .O(\shift_out_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF0FFF0)) 
    \shift_out_data[6]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\jedec_id[15]_i_3_n_0 ),
        .I2(\shift_out_data[6]_i_2_n_0 ),
        .I3(\shift_out_data[6]_i_3_n_0 ),
        .I4(\shift_out_data[6]_i_4_n_0 ),
        .I5(\shift_out_data[6]_i_5_n_0 ),
        .O(\shift_out_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAE0000000000)) 
    \shift_out_data[6]_i_2 
       (.I0(\shift_out_data[6]_i_6_n_0 ),
        .I1(\shift_out_data[6]_i_4_n_0 ),
        .I2(byte_counter[0]),
        .I3(byte_counter[1]),
        .I4(byte_counter[2]),
        .I5(\addr_buf_reg_n_0_[6] ),
        .O(\shift_out_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF800000000000000)) 
    \shift_out_data[6]_i_3 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(byte_counter[2]),
        .I3(data_buf[6]),
        .I4(\state_reg_n_0_[3] ),
        .I5(\shift_out_data[3]_i_3_n_0 ),
        .O(\shift_out_data[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h12001000)) 
    \shift_out_data[6]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\shift_out_data[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    \shift_out_data[6]_i_5 
       (.I0(p_1_in[6]),
        .I1(byte_counter[2]),
        .I2(byte_counter[1]),
        .I3(byte_counter[0]),
        .I4(p_2_in[6]),
        .O(\shift_out_data[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \shift_out_data[6]_i_6 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .O(\shift_out_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F8FF)) 
    \shift_out_data[7]_i_1 
       (.I0(\shift_out_data[7]_i_2_n_0 ),
        .I1(\addr_buf_reg_n_0_[7] ),
        .I2(\shift_out_data[7]_i_3_n_0 ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state[5]_i_9_n_0 ),
        .I5(\shift_out_data[7]_i_4_n_0 ),
        .O(\shift_out_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0002000200020)) 
    \shift_out_data[7]_i_2 
       (.I0(\shift_out_data[7]_i_5_n_0 ),
        .I1(byte_counter[0]),
        .I2(byte_counter[1]),
        .I3(byte_counter[2]),
        .I4(\jedec_id[15]_i_3_n_0 ),
        .I5(\state_reg_n_0_[4] ),
        .O(\shift_out_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \shift_out_data[7]_i_3 
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .I3(p_1_in[7]),
        .I4(\shift_out_data[4]_i_4_n_0 ),
        .O(\shift_out_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \shift_out_data[7]_i_4 
       (.I0(\shift_out_data[4]_i_4_n_0 ),
        .I1(p_2_in[7]),
        .I2(\byte_counter[1]_i_3_n_0 ),
        .I3(\shift_out_data[3]_i_3_n_0 ),
        .I4(\return_state[4]_i_3_n_0 ),
        .I5(data_buf[7]),
        .O(\shift_out_data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00002F00)) 
    \shift_out_data[7]_i_5 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\shift_out_data[7]_i_5_n_0 ));
  FDCE \shift_out_data_reg[0] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[0]_i_1_n_0 ),
        .Q(shift_out_data[0]));
  FDCE \shift_out_data_reg[1] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[1]_i_1_n_0 ),
        .Q(shift_out_data[1]));
  FDCE \shift_out_data_reg[2] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[2]_i_1_n_0 ),
        .Q(shift_out_data[2]));
  FDCE \shift_out_data_reg[3] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[3]_i_1_n_0 ),
        .Q(shift_out_data[3]));
  FDCE \shift_out_data_reg[4] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[4]_i_1_n_0 ),
        .Q(shift_out_data[4]));
  FDCE \shift_out_data_reg[5] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[5]_i_1_n_0 ),
        .Q(shift_out_data[5]));
  FDCE \shift_out_data_reg[6] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[6]_i_1_n_0 ),
        .Q(shift_out_data[6]));
  FDCE \shift_out_data_reg[7] 
       (.C(clk),
        .CE(load_shift_out_i_1_n_0),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out_data[7]_i_1_n_0 ),
        .Q(shift_out_data[7]));
  FDCE \shift_out_reg[0] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[0]_i_1_n_0 ),
        .Q(shift_out[0]));
  FDCE \shift_out_reg[1] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[1]_i_1_n_0 ),
        .Q(shift_out[1]));
  FDCE \shift_out_reg[2] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[2]_i_1_n_0 ),
        .Q(shift_out[2]));
  FDCE \shift_out_reg[3] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[3]_i_1_n_0 ),
        .Q(shift_out[3]));
  FDCE \shift_out_reg[4] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[4]_i_1_n_0 ),
        .Q(shift_out[4]));
  FDCE \shift_out_reg[5] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[5]_i_1_n_0 ),
        .Q(shift_out[5]));
  FDCE \shift_out_reg[6] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[6]_i_1_n_0 ),
        .Q(shift_out[6]));
  FDCE \shift_out_reg[7] 
       (.C(clk),
        .CE(\shift_out[7]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\shift_out[7]_i_2_n_0 ),
        .Q(shift_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    spi_cs_n_i_1
       (.I0(spi_cs_n_i_2_n_0),
        .I1(spi_cs_n_i_3_n_0),
        .I2(spi_cs_n),
        .O(spi_cs_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFEEC)) 
    spi_cs_n_i_10
       (.I0(\state_reg_n_0_[1] ),
        .I1(byte_counter[2]),
        .I2(byte_counter[0]),
        .I3(byte_counter[1]),
        .O(spi_cs_n_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    spi_cs_n_i_11
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .O(spi_cs_n_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_12
       (.I0(wait_counter[21]),
        .I1(wait_counter[20]),
        .I2(wait_counter[23]),
        .I3(wait_counter[22]),
        .O(spi_cs_n_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_13
       (.I0(wait_counter[17]),
        .I1(wait_counter[16]),
        .I2(wait_counter[19]),
        .I3(wait_counter[18]),
        .O(spi_cs_n_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_14
       (.I0(wait_counter[29]),
        .I1(wait_counter[28]),
        .I2(wait_counter[31]),
        .I3(wait_counter[30]),
        .O(spi_cs_n_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_15
       (.I0(wait_counter[25]),
        .I1(wait_counter[24]),
        .I2(wait_counter[27]),
        .I3(wait_counter[26]),
        .O(spi_cs_n_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_16
       (.I0(wait_counter[5]),
        .I1(wait_counter[4]),
        .I2(wait_counter[7]),
        .I3(wait_counter[6]),
        .O(spi_cs_n_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_17
       (.I0(wait_counter[13]),
        .I1(wait_counter[12]),
        .I2(wait_counter[15]),
        .I3(wait_counter[14]),
        .O(spi_cs_n_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    spi_cs_n_i_18
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(spi_cs_n_i_18_n_0));
  LUT6 #(
    .INIT(64'h00FF0040FFFF0040)) 
    spi_cs_n_i_19
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(spi_cs_n_i_19_n_0));
  LUT6 #(
    .INIT(64'h0EF0FE0F0EF0FF0F)) 
    spi_cs_n_i_2
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(byte_counter[2]),
        .O(spi_cs_n_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    spi_cs_n_i_20
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .O(spi_cs_n_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000041)) 
    spi_cs_n_i_21
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .O(spi_cs_n_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    spi_cs_n_i_3
       (.I0(spi_cs_n_i_4_n_0),
        .I1(spi_cs_n_i_5_n_0),
        .I2(spi_cs_n_i_6_n_0),
        .I3(spi_cs_n_i_7_n_0),
        .I4(spi_cs_n_i_8_n_0),
        .I5(spi_cs_n_i_9_n_0),
        .O(spi_cs_n_i_3_n_0));
  LUT6 #(
    .INIT(64'h0A0A00FF0A0A0088)) 
    spi_cs_n_i_4
       (.I0(\state[4]_i_7_n_0 ),
        .I1(spi_cs_n_i_10_n_0),
        .I2(\state_reg_n_0_[4] ),
        .I3(\read_data[7]_i_4_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(spi_cs_n_i_11_n_0),
        .O(spi_cs_n_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000C300440044)) 
    spi_cs_n_i_5
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(spi_cs_n_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_cs_n_i_6
       (.I0(spi_cs_n_i_12_n_0),
        .I1(spi_cs_n_i_13_n_0),
        .I2(spi_cs_n_i_14_n_0),
        .I3(spi_cs_n_i_15_n_0),
        .O(spi_cs_n_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spi_cs_n_i_7
       (.I0(wait_counter[2]),
        .I1(wait_counter[3]),
        .I2(wait_counter[0]),
        .I3(wait_counter[1]),
        .I4(spi_cs_n_i_16_n_0),
        .O(spi_cs_n_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spi_cs_n_i_8
       (.I0(wait_counter[10]),
        .I1(wait_counter[11]),
        .I2(wait_counter[8]),
        .I3(wait_counter[9]),
        .I4(spi_cs_n_i_17_n_0),
        .O(spi_cs_n_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBBBAAA)) 
    spi_cs_n_i_9
       (.I0(spi_cs_n_i_18_n_0),
        .I1(\read_data[7]_i_4_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(spi_cs_n_i_19_n_0),
        .I4(spi_cs_n_i_20_n_0),
        .I5(spi_cs_n_i_21_n_0),
        .O(spi_cs_n_i_9_n_0));
  FDPE spi_cs_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_cs_n_i_1_n_0),
        .PRE(\read_data[7]_i_2_n_0 ),
        .Q(spi_cs_n));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    spi_mosi_i_1
       (.I0(shift_out[7]),
        .I1(load_shift_out_reg_n_0),
        .I2(sck_enable_reg_n_0),
        .I3(sck_toggle_reg_n_0),
        .I4(spi_sck_reg_0),
        .I5(spi_mosi),
        .O(spi_mosi_i_1_n_0));
  FDCE spi_mosi_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(spi_mosi_i_1_n_0),
        .Q(spi_mosi));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h48)) 
    spi_sck_i_1
       (.I0(sck_toggle_reg_n_0),
        .I1(sck_enable_reg_n_0),
        .I2(spi_sck_reg_0),
        .O(spi_sck_i_1_n_0));
  FDCE spi_sck_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(spi_sck_i_1_n_0),
        .Q(spi_sck_reg_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state[0]_i_5_n_0 ),
        .I4(error_i_4_n_0),
        .I5(\status_reg_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_6_n_0 ),
        .I1(\state[0]_i_7_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\return_state_reg_n_0_[0] ),
        .I4(\state[3]_i_5_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \state[0]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \state[0]_i_5 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88FA00AA00000000)) 
    \state[0]_i_6 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\return_state_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[4]_i_7_n_0 ),
        .O(\state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888808)) 
    \state[0]_i_7 
       (.I0(\jedec_id[15]_i_3_n_0 ),
        .I1(\state[4]_i_7_n_0 ),
        .I2(cmd_program),
        .I3(cmd_read_id),
        .I4(cmd_read),
        .I5(first_access),
        .O(\state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEAEAEA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(\state[1]_i_5_n_0 ),
        .I4(\state[5]_i_9_n_0 ),
        .I5(\state[1]_i_6_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \state[1]_i_10 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bit_counter_reg_n_0_[1] ),
        .O(\state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \state[1]_i_11 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAFFFFEAAA)) 
    \state[1]_i_2 
       (.I0(\state[1]_i_7_n_0 ),
        .I1(\state[1]_i_8_n_0 ),
        .I2(\state[3]_i_8_n_0 ),
        .I3(\state[1]_i_9_n_0 ),
        .I4(\state[4]_i_7_n_0 ),
        .I5(\state[3]_i_4_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \state[1]_i_3 
       (.I0(\return_state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF4440000)) 
    \state[1]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[3]_i_12_n_0 ),
        .I3(\state[1]_i_8_n_0 ),
        .I4(\state[4]_i_4_n_0 ),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    \state[1]_i_7 
       (.I0(\state[1]_i_10_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(cmd_read_id),
        .I3(first_access),
        .I4(spi_cs_n_i_20_n_0),
        .I5(\state[1]_i_11_n_0 ),
        .O(\state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \state[1]_i_8 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\return_state_reg_n_0_[1] ),
        .I2(\status_reg_reg_n_0_[0] ),
        .I3(error_i_7_n_0),
        .O(\state[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \state[1]_i_9 
       (.I0(error_i_12_n_0),
        .I1(timeout_counter[24]),
        .I2(timeout_counter[18]),
        .I3(timeout_counter[16]),
        .I4(\state[4]_i_4_n_0 ),
        .O(\state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEEEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(error_i_4_n_0),
        .I3(\return_state_reg_n_0_[2] ),
        .I4(\status_reg_reg_n_0_[0] ),
        .I5(\state[2]_i_4_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_5_n_0 ),
        .I1(first_access),
        .I2(cmd_read_id),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[2]_i_6_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \state[2]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\return_state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5FF50000F0400000)) 
    \state[2]_i_5 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    \state[2]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(cmd_program),
        .I5(cmd_read),
        .O(\state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAEA)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\state[3]_i_5_n_0 ),
        .I5(\state[3]_i_6_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[3]_i_10 
       (.I0(\return_state_reg_n_0_[1] ),
        .I1(\status_reg_reg_n_0_[0] ),
        .O(\state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \state[3]_i_11 
       (.I0(\read_data[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(error_i_7_n_0),
        .O(\state[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h5510FFFF)) 
    \state[3]_i_12 
       (.I0(timeout_counter[24]),
        .I1(timeout_counter[18]),
        .I2(\state[3]_i_14_n_0 ),
        .I3(\state[3]_i_15_n_0 ),
        .I4(timeout_counter[25]),
        .O(\state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[3]_i_13 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .O(\state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \state[3]_i_14 
       (.I0(timeout_counter[16]),
        .I1(timeout_counter[13]),
        .I2(timeout_counter[12]),
        .I3(timeout_counter[15]),
        .I4(timeout_counter[14]),
        .I5(timeout_counter[17]),
        .O(\state[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \state[3]_i_15 
       (.I0(timeout_counter[19]),
        .I1(timeout_counter[22]),
        .I2(timeout_counter[23]),
        .I3(timeout_counter[21]),
        .I4(timeout_counter[20]),
        .O(\state[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_7_n_0 ),
        .I1(\state[3]_i_8_n_0 ),
        .I2(\state[3]_i_9_n_0 ),
        .I3(\state[3]_i_10_n_0 ),
        .I4(\state[3]_i_11_n_0 ),
        .I5(\state[3]_i_12_n_0 ),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[3]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \state[3]_i_5 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA00FFC00000)) 
    \state[3]_i_6 
       (.I0(\return_state_reg_n_0_[1] ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\state[3]_i_13_n_0 ),
        .I3(\state[3]_i_3_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \state[3]_i_7 
       (.I0(\return_state_reg_n_0_[1] ),
        .I1(\status_reg_reg_n_0_[0] ),
        .I2(timeout_counter[24]),
        .I3(timeout_counter[18]),
        .I4(timeout_counter[16]),
        .I5(error_i_12_n_0),
        .O(\state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \state[3]_i_8 
       (.I0(error_i_13_n_0),
        .I1(timeout_counter[0]),
        .I2(timeout_counter[5]),
        .I3(timeout_counter[6]),
        .I4(timeout_counter[7]),
        .O(\state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \state[3]_i_9 
       (.I0(\jedec_id[15]_i_3_n_0 ),
        .I1(\state[5]_i_12_n_0 ),
        .I2(\state_reg_n_0_[5] ),
        .I3(first_access),
        .I4(cmd_read),
        .I5(cmd_read_id),
        .O(\state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_2_n_0 ),
        .I1(\state[4]_i_3_n_0 ),
        .I2(\state[4]_i_4_n_0 ),
        .I3(\return_state_reg_n_0_[4] ),
        .I4(\state[4]_i_5_n_0 ),
        .I5(\state[4]_i_6_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF800080008000800)) 
    \state[4]_i_2 
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(\state[4]_i_7_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \state[4]_i_3 
       (.I0(\state[4]_i_8_n_0 ),
        .I1(error_i_8_n_0),
        .I2(error_i_7_n_0),
        .I3(error_i_6_n_0),
        .I4(error_i_5_n_0),
        .I5(\status_reg_reg_n_0_[0] ),
        .O(\state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \state[4]_i_4 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00AAEAAA)) 
    \state[4]_i_5 
       (.I0(\state[4]_i_4_n_0 ),
        .I1(\state[3]_i_5_n_0 ),
        .I2(\return_state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[4]_i_6 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[4]_i_7 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .O(\state[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \state[4]_i_8 
       (.I0(error_i_11_n_0),
        .I1(error_i_10_n_0),
        .I2(timeout_counter[17]),
        .I3(timeout_counter[7]),
        .O(\state[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \state[5]_i_1 
       (.I0(\state[5]_i_3_n_0 ),
        .I1(\state[5]_i_4_n_0 ),
        .I2(\state[5]_i_5_n_0 ),
        .I3(\state[5]_i_6_n_0 ),
        .I4(\state[5]_i_7_n_0 ),
        .I5(\state[5]_i_8_n_0 ),
        .O(\state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F08000C000C00)) 
    \state[5]_i_10 
       (.I0(byte_counter[2]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\read_data[7]_i_4_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A04F44F0F0)) 
    \state[5]_i_11 
       (.I0(\state[5]_i_19_n_0 ),
        .I1(\state[5]_i_20_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(byte_counter[2]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\read_data[7]_i_4_n_0 ),
        .O(\state[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[5]_i_12 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\state[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[5]_i_13 
       (.I0(cmd_read_id),
        .I1(cmd_read),
        .I2(cmd_erase_sector),
        .I3(cmd_program),
        .O(\state[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010100010)) 
    \state[5]_i_14 
       (.I0(\state[5]_i_9_n_0 ),
        .I1(\read_data[7]_i_4_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(byte_counter[1]),
        .I5(byte_counter[0]),
        .O(\state[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000F000002020202)) 
    \state[5]_i_15 
       (.I0(\state[5]_i_21_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\read_data[7]_i_4_n_0 ),
        .I3(\shift_out_data[5]_i_6_n_0 ),
        .I4(\state[5]_i_22_n_0 ),
        .I5(\state[5]_i_13_n_0 ),
        .O(\state[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \state[5]_i_16 
       (.I0(\return_state[4]_i_3_n_0 ),
        .I1(\state[5]_i_13_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\read_data[7]_i_4_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[5]_i_17 
       (.I0(wait_counter[26]),
        .I1(wait_counter[27]),
        .I2(wait_counter[24]),
        .I3(wait_counter[25]),
        .I4(spi_cs_n_i_14_n_0),
        .O(\state[5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[5]_i_18 
       (.I0(wait_counter[18]),
        .I1(wait_counter[19]),
        .I2(wait_counter[16]),
        .I3(wait_counter[17]),
        .I4(spi_cs_n_i_12_n_0),
        .O(\state[5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[5]_i_19 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \state[5]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state[5]_i_9_n_0 ),
        .O(\state[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[5]_i_20 
       (.I0(byte_counter[0]),
        .I1(byte_counter[1]),
        .O(\state[5]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hCCCCE000)) 
    \state[5]_i_21 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(byte_counter[1]),
        .I3(byte_counter[0]),
        .I4(byte_counter[2]),
        .O(\state[5]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[5]_i_22 
       (.I0(byte_counter[2]),
        .I1(byte_counter[1]),
        .I2(byte_counter[0]),
        .O(\state[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABAA)) 
    \state[5]_i_3 
       (.I0(\state[5]_i_10_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state[5]_i_11_n_0 ),
        .O(\state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4440)) 
    \state[5]_i_4 
       (.I0(\state[5]_i_12_n_0 ),
        .I1(\jedec_id[15]_i_3_n_0 ),
        .I2(first_access),
        .I3(\state[5]_i_13_n_0 ),
        .I4(\state[5]_i_14_n_0 ),
        .I5(\state[5]_i_15_n_0 ),
        .O(\state[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAAAEA)) 
    \state[5]_i_5 
       (.I0(\state[5]_i_16_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[5]_i_13_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \state[5]_i_6 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[5]_i_7 
       (.I0(spi_cs_n_i_8_n_0),
        .I1(spi_cs_n_i_7_n_0),
        .I2(\state[5]_i_17_n_0 ),
        .I3(\state[5]_i_18_n_0 ),
        .O(\state[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF004040)) 
    \state[5]_i_8 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[5]_i_9 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[5]_i_9_n_0 ));
  FDCE \state_reg[0] 
       (.C(clk),
        .CE(\state[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE \state_reg[1] 
       (.C(clk),
        .CE(\state[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE \state_reg[2] 
       (.C(clk),
        .CE(\state[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE \state_reg[3] 
       (.C(clk),
        .CE(\state[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  FDCE \state_reg[4] 
       (.C(clk),
        .CE(\state[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ));
  FDCE \state_reg[5] 
       (.C(clk),
        .CE(\state[5]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\state[5]_i_2_n_0 ),
        .Q(\state_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \status_reg[0]_i_1 
       (.I0(shift_in[0]),
        .I1(\byte_counter[1]_i_3_n_0 ),
        .I2(\bit_counter[5]_i_3_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[4]_i_4_n_0 ),
        .I5(\status_reg_reg_n_0_[0] ),
        .O(\status_reg[0]_i_1_n_0 ));
  FDCE \status_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\status_reg[0]_i_1_n_0 ),
        .Q(\status_reg_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry
       (.CI(1'b0),
        .CO({timeout_counter0_carry_n_0,timeout_counter0_carry_n_1,timeout_counter0_carry_n_2,timeout_counter0_carry_n_3}),
        .CYINIT(timeout_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[4:1]),
        .S(timeout_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__0
       (.CI(timeout_counter0_carry_n_0),
        .CO({timeout_counter0_carry__0_n_0,timeout_counter0_carry__0_n_1,timeout_counter0_carry__0_n_2,timeout_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[8:5]),
        .S(timeout_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__1
       (.CI(timeout_counter0_carry__0_n_0),
        .CO({timeout_counter0_carry__1_n_0,timeout_counter0_carry__1_n_1,timeout_counter0_carry__1_n_2,timeout_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[12:9]),
        .S(timeout_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__2
       (.CI(timeout_counter0_carry__1_n_0),
        .CO({timeout_counter0_carry__2_n_0,timeout_counter0_carry__2_n_1,timeout_counter0_carry__2_n_2,timeout_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[16:13]),
        .S(timeout_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__3
       (.CI(timeout_counter0_carry__2_n_0),
        .CO({timeout_counter0_carry__3_n_0,timeout_counter0_carry__3_n_1,timeout_counter0_carry__3_n_2,timeout_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[20:17]),
        .S(timeout_counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__4
       (.CI(timeout_counter0_carry__3_n_0),
        .CO({timeout_counter0_carry__4_n_0,timeout_counter0_carry__4_n_1,timeout_counter0_carry__4_n_2,timeout_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[24:21]),
        .S(timeout_counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__5
       (.CI(timeout_counter0_carry__4_n_0),
        .CO({timeout_counter0_carry__5_n_0,timeout_counter0_carry__5_n_1,timeout_counter0_carry__5_n_2,timeout_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_counter0[28:25]),
        .S(timeout_counter[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout_counter0_carry__6
       (.CI(timeout_counter0_carry__5_n_0),
        .CO({NLW_timeout_counter0_carry__6_CO_UNCONNECTED[3:2],timeout_counter0_carry__6_n_2,timeout_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timeout_counter0_carry__6_O_UNCONNECTED[3],timeout_counter0[31:29]}),
        .S({1'b0,timeout_counter[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timeout_counter[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter[0]),
        .O(\timeout_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[10]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[10]),
        .O(\timeout_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[11]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[11]),
        .O(\timeout_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[12]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[12]),
        .O(\timeout_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[13]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[13]),
        .O(\timeout_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[14]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[14]),
        .O(\timeout_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[15]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[15]),
        .O(\timeout_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[16]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[16]),
        .O(\timeout_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[17]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[17]),
        .O(\timeout_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[18]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[18]),
        .O(\timeout_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[19]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[19]),
        .O(\timeout_counter[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[1]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[1]),
        .O(\timeout_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[20]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[20]),
        .O(\timeout_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[21]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[21]),
        .O(\timeout_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[22]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[22]),
        .O(\timeout_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[23]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[23]),
        .O(\timeout_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[24]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[24]),
        .O(\timeout_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[25]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[25]),
        .O(\timeout_counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[26]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[26]),
        .O(\timeout_counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[27]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[27]),
        .O(\timeout_counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[28]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[28]),
        .O(\timeout_counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[29]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[29]),
        .O(\timeout_counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[2]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[2]),
        .O(\timeout_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[30]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[30]),
        .O(\timeout_counter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000001)) 
    \timeout_counter[31]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\timeout_counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[31]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[31]),
        .O(\timeout_counter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[3]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[3]),
        .O(\timeout_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[4]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[4]),
        .O(\timeout_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[5]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[5]),
        .O(\timeout_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[6]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[6]),
        .O(\timeout_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[7]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[7]),
        .O(\timeout_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[8]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[8]),
        .O(\timeout_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_counter[9]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(timeout_counter0[9]),
        .O(\timeout_counter[9]_i_1_n_0 ));
  FDCE \timeout_counter_reg[0] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[0]_i_1_n_0 ),
        .Q(timeout_counter[0]));
  FDCE \timeout_counter_reg[10] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[10]_i_1_n_0 ),
        .Q(timeout_counter[10]));
  FDCE \timeout_counter_reg[11] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[11]_i_1_n_0 ),
        .Q(timeout_counter[11]));
  FDCE \timeout_counter_reg[12] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[12]_i_1_n_0 ),
        .Q(timeout_counter[12]));
  FDCE \timeout_counter_reg[13] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[13]_i_1_n_0 ),
        .Q(timeout_counter[13]));
  FDCE \timeout_counter_reg[14] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[14]_i_1_n_0 ),
        .Q(timeout_counter[14]));
  FDCE \timeout_counter_reg[15] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[15]_i_1_n_0 ),
        .Q(timeout_counter[15]));
  FDCE \timeout_counter_reg[16] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[16]_i_1_n_0 ),
        .Q(timeout_counter[16]));
  FDCE \timeout_counter_reg[17] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[17]_i_1_n_0 ),
        .Q(timeout_counter[17]));
  FDCE \timeout_counter_reg[18] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[18]_i_1_n_0 ),
        .Q(timeout_counter[18]));
  FDCE \timeout_counter_reg[19] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[19]_i_1_n_0 ),
        .Q(timeout_counter[19]));
  FDCE \timeout_counter_reg[1] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[1]_i_1_n_0 ),
        .Q(timeout_counter[1]));
  FDCE \timeout_counter_reg[20] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[20]_i_1_n_0 ),
        .Q(timeout_counter[20]));
  FDCE \timeout_counter_reg[21] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[21]_i_1_n_0 ),
        .Q(timeout_counter[21]));
  FDCE \timeout_counter_reg[22] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[22]_i_1_n_0 ),
        .Q(timeout_counter[22]));
  FDCE \timeout_counter_reg[23] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[23]_i_1_n_0 ),
        .Q(timeout_counter[23]));
  FDCE \timeout_counter_reg[24] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[24]_i_1_n_0 ),
        .Q(timeout_counter[24]));
  FDCE \timeout_counter_reg[25] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[25]_i_1_n_0 ),
        .Q(timeout_counter[25]));
  FDCE \timeout_counter_reg[26] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[26]_i_1_n_0 ),
        .Q(timeout_counter[26]));
  FDCE \timeout_counter_reg[27] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[27]_i_1_n_0 ),
        .Q(timeout_counter[27]));
  FDCE \timeout_counter_reg[28] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[28]_i_1_n_0 ),
        .Q(timeout_counter[28]));
  FDCE \timeout_counter_reg[29] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[29]_i_1_n_0 ),
        .Q(timeout_counter[29]));
  FDCE \timeout_counter_reg[2] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[2]_i_1_n_0 ),
        .Q(timeout_counter[2]));
  FDCE \timeout_counter_reg[30] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[30]_i_1_n_0 ),
        .Q(timeout_counter[30]));
  FDCE \timeout_counter_reg[31] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[31]_i_2_n_0 ),
        .Q(timeout_counter[31]));
  FDCE \timeout_counter_reg[3] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[3]_i_1_n_0 ),
        .Q(timeout_counter[3]));
  FDCE \timeout_counter_reg[4] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[4]_i_1_n_0 ),
        .Q(timeout_counter[4]));
  FDCE \timeout_counter_reg[5] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[5]_i_1_n_0 ),
        .Q(timeout_counter[5]));
  FDCE \timeout_counter_reg[6] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[6]_i_1_n_0 ),
        .Q(timeout_counter[6]));
  FDCE \timeout_counter_reg[7] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[7]_i_1_n_0 ),
        .Q(timeout_counter[7]));
  FDCE \timeout_counter_reg[8] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[8]_i_1_n_0 ),
        .Q(timeout_counter[8]));
  FDCE \timeout_counter_reg[9] 
       (.C(clk),
        .CE(\timeout_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\timeout_counter[9]_i_1_n_0 ),
        .Q(timeout_counter[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry
       (.CI(1'b0),
        .CO({wait_counter0_carry_n_0,wait_counter0_carry_n_1,wait_counter0_carry_n_2,wait_counter0_carry_n_3}),
        .CYINIT(wait_counter[0]),
        .DI(wait_counter[4:1]),
        .O(wait_counter0[4:1]),
        .S({wait_counter0_carry_i_1_n_0,wait_counter0_carry_i_2_n_0,wait_counter0_carry_i_3_n_0,wait_counter0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__0
       (.CI(wait_counter0_carry_n_0),
        .CO({wait_counter0_carry__0_n_0,wait_counter0_carry__0_n_1,wait_counter0_carry__0_n_2,wait_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(wait_counter[8:5]),
        .O(wait_counter0[8:5]),
        .S({wait_counter0_carry__0_i_1_n_0,wait_counter0_carry__0_i_2_n_0,wait_counter0_carry__0_i_3_n_0,wait_counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_1
       (.I0(wait_counter[8]),
        .O(wait_counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_2
       (.I0(wait_counter[7]),
        .O(wait_counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_3
       (.I0(wait_counter[6]),
        .O(wait_counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_4
       (.I0(wait_counter[5]),
        .O(wait_counter0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__1
       (.CI(wait_counter0_carry__0_n_0),
        .CO({wait_counter0_carry__1_n_0,wait_counter0_carry__1_n_1,wait_counter0_carry__1_n_2,wait_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(wait_counter[12:9]),
        .O(wait_counter0[12:9]),
        .S({wait_counter0_carry__1_i_1_n_0,wait_counter0_carry__1_i_2_n_0,wait_counter0_carry__1_i_3_n_0,wait_counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__1_i_1
       (.I0(wait_counter[12]),
        .O(wait_counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__1_i_2
       (.I0(wait_counter[11]),
        .O(wait_counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__1_i_3
       (.I0(wait_counter[10]),
        .O(wait_counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__1_i_4
       (.I0(wait_counter[9]),
        .O(wait_counter0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__2
       (.CI(wait_counter0_carry__1_n_0),
        .CO({wait_counter0_carry__2_n_0,wait_counter0_carry__2_n_1,wait_counter0_carry__2_n_2,wait_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(wait_counter[16:13]),
        .O(wait_counter0[16:13]),
        .S({wait_counter0_carry__2_i_1_n_0,wait_counter0_carry__2_i_2_n_0,wait_counter0_carry__2_i_3_n_0,wait_counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__2_i_1
       (.I0(wait_counter[16]),
        .O(wait_counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__2_i_2
       (.I0(wait_counter[15]),
        .O(wait_counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__2_i_3
       (.I0(wait_counter[14]),
        .O(wait_counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__2_i_4
       (.I0(wait_counter[13]),
        .O(wait_counter0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__3
       (.CI(wait_counter0_carry__2_n_0),
        .CO({wait_counter0_carry__3_n_0,wait_counter0_carry__3_n_1,wait_counter0_carry__3_n_2,wait_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(wait_counter[20:17]),
        .O(wait_counter0[20:17]),
        .S({wait_counter0_carry__3_i_1_n_0,wait_counter0_carry__3_i_2_n_0,wait_counter0_carry__3_i_3_n_0,wait_counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__3_i_1
       (.I0(wait_counter[20]),
        .O(wait_counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__3_i_2
       (.I0(wait_counter[19]),
        .O(wait_counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__3_i_3
       (.I0(wait_counter[18]),
        .O(wait_counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__3_i_4
       (.I0(wait_counter[17]),
        .O(wait_counter0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__4
       (.CI(wait_counter0_carry__3_n_0),
        .CO({wait_counter0_carry__4_n_0,wait_counter0_carry__4_n_1,wait_counter0_carry__4_n_2,wait_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(wait_counter[24:21]),
        .O(wait_counter0[24:21]),
        .S({wait_counter0_carry__4_i_1_n_0,wait_counter0_carry__4_i_2_n_0,wait_counter0_carry__4_i_3_n_0,wait_counter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__4_i_1
       (.I0(wait_counter[24]),
        .O(wait_counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__4_i_2
       (.I0(wait_counter[23]),
        .O(wait_counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__4_i_3
       (.I0(wait_counter[22]),
        .O(wait_counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__4_i_4
       (.I0(wait_counter[21]),
        .O(wait_counter0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__5
       (.CI(wait_counter0_carry__4_n_0),
        .CO({wait_counter0_carry__5_n_0,wait_counter0_carry__5_n_1,wait_counter0_carry__5_n_2,wait_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(wait_counter[28:25]),
        .O(wait_counter0[28:25]),
        .S({wait_counter0_carry__5_i_1_n_0,wait_counter0_carry__5_i_2_n_0,wait_counter0_carry__5_i_3_n_0,wait_counter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__5_i_1
       (.I0(wait_counter[28]),
        .O(wait_counter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__5_i_2
       (.I0(wait_counter[27]),
        .O(wait_counter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__5_i_3
       (.I0(wait_counter[26]),
        .O(wait_counter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__5_i_4
       (.I0(wait_counter[25]),
        .O(wait_counter0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wait_counter0_carry__6
       (.CI(wait_counter0_carry__5_n_0),
        .CO({NLW_wait_counter0_carry__6_CO_UNCONNECTED[3:2],wait_counter0_carry__6_n_2,wait_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,wait_counter[30:29]}),
        .O({NLW_wait_counter0_carry__6_O_UNCONNECTED[3],wait_counter0[31:29]}),
        .S({1'b0,wait_counter0_carry__6_i_1_n_0,wait_counter0_carry__6_i_2_n_0,wait_counter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__6_i_1
       (.I0(wait_counter[31]),
        .O(wait_counter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__6_i_2
       (.I0(wait_counter[30]),
        .O(wait_counter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__6_i_3
       (.I0(wait_counter[29]),
        .O(wait_counter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_1
       (.I0(wait_counter[4]),
        .O(wait_counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_2
       (.I0(wait_counter[3]),
        .O(wait_counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_3
       (.I0(wait_counter[2]),
        .O(wait_counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_4
       (.I0(wait_counter[1]),
        .O(wait_counter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h000084A4)) 
    \wait_counter[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter[0]),
        .O(\wait_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[10]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[10]),
        .O(\wait_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[11]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[11]),
        .O(\wait_counter[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD0A280F3)) 
    \wait_counter[12]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(wait_counter0[12]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\wait_counter[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[13]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[13]),
        .O(\wait_counter[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[14]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[14]),
        .O(\wait_counter[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[15]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[15]),
        .O(\wait_counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[16]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[16]),
        .O(\wait_counter[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[17]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[17]),
        .O(\wait_counter[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[18]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[18]),
        .O(\wait_counter[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[19]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[19]),
        .O(\wait_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[1]),
        .O(\wait_counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[20]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[20]),
        .O(\wait_counter[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[21]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[21]),
        .O(\wait_counter[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[22]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[22]),
        .O(\wait_counter[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[23]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[23]),
        .O(\wait_counter[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[24]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[24]),
        .O(\wait_counter[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[25]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[25]),
        .O(\wait_counter[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[26]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[26]),
        .O(\wait_counter[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[27]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[27]),
        .O(\wait_counter[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[28]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[28]),
        .O(\wait_counter[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[29]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[29]),
        .O(\wait_counter[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAB2BAB2BB020B030)) 
    \wait_counter[2]_i_1 
       (.I0(wait_counter0[2]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\wait_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[30]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[30]),
        .O(\wait_counter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \wait_counter[31]_i_1 
       (.I0(\state[5]_i_7_n_0 ),
        .I1(\wait_counter[31]_i_3_n_0 ),
        .I2(\wait_counter[31]_i_4_n_0 ),
        .I3(\wait_counter[31]_i_5_n_0 ),
        .I4(\wait_counter[31]_i_6_n_0 ),
        .I5(\wait_counter[31]_i_7_n_0 ),
        .O(\wait_counter[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[31]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[31]),
        .O(\wait_counter[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008001000000008)) 
    \wait_counter[31]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\wait_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \wait_counter[31]_i_4 
       (.I0(\return_state[4]_i_3_n_0 ),
        .I1(\jedec_id[23]_i_3_n_0 ),
        .I2(\state[4]_i_4_n_0 ),
        .I3(\state[3]_i_11_n_0 ),
        .I4(\wait_counter[31]_i_8_n_0 ),
        .I5(\state[3]_i_8_n_0 ),
        .O(\wait_counter[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \wait_counter[31]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\read_data[7]_i_4_n_0 ),
        .O(\wait_counter[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \wait_counter[31]_i_6 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(\read_data[7]_i_4_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\wait_counter[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \wait_counter[31]_i_7 
       (.I0(\bit_counter[5]_i_3_n_0 ),
        .I1(\state[4]_i_7_n_0 ),
        .I2(\shift_out_data[5]_i_3_n_0 ),
        .I3(\state[3]_i_12_n_0 ),
        .I4(\state[3]_i_11_n_0 ),
        .I5(\status_reg_reg_n_0_[0] ),
        .O(\wait_counter[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \wait_counter[31]_i_8 
       (.I0(\status_reg_reg_n_0_[0] ),
        .I1(timeout_counter[24]),
        .I2(timeout_counter[16]),
        .I3(timeout_counter[18]),
        .I4(error_i_12_n_0),
        .O(\wait_counter[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAF2302CF)) 
    \wait_counter[3]_i_1 
       (.I0(wait_counter0[3]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\wait_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h84A40000)) 
    \wait_counter[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(wait_counter0[4]),
        .O(\wait_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC0CCF6C4)) 
    \wait_counter[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(wait_counter0[5]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\wait_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0EA00F5FFEA0000)) 
    \wait_counter[6]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(wait_counter0[6]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\wait_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h802FF82F)) 
    \wait_counter[7]_i_1 
       (.I0(wait_counter0[7]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\wait_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAF2302CF)) 
    \wait_counter[8]_i_1 
       (.I0(wait_counter0[8]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\wait_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h802FF82F)) 
    \wait_counter[9]_i_1 
       (.I0(wait_counter0[9]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\wait_counter[9]_i_1_n_0 ));
  FDCE \wait_counter_reg[0] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[0]_i_1_n_0 ),
        .Q(wait_counter[0]));
  FDCE \wait_counter_reg[10] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[10]_i_1_n_0 ),
        .Q(wait_counter[10]));
  FDCE \wait_counter_reg[11] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[11]_i_1_n_0 ),
        .Q(wait_counter[11]));
  FDCE \wait_counter_reg[12] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[12]_i_1_n_0 ),
        .Q(wait_counter[12]));
  FDCE \wait_counter_reg[13] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[13]_i_1_n_0 ),
        .Q(wait_counter[13]));
  FDCE \wait_counter_reg[14] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[14]_i_1_n_0 ),
        .Q(wait_counter[14]));
  FDCE \wait_counter_reg[15] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[15]_i_1_n_0 ),
        .Q(wait_counter[15]));
  FDCE \wait_counter_reg[16] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[16]_i_1_n_0 ),
        .Q(wait_counter[16]));
  FDCE \wait_counter_reg[17] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[17]_i_1_n_0 ),
        .Q(wait_counter[17]));
  FDCE \wait_counter_reg[18] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[18]_i_1_n_0 ),
        .Q(wait_counter[18]));
  FDCE \wait_counter_reg[19] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[19]_i_1_n_0 ),
        .Q(wait_counter[19]));
  FDCE \wait_counter_reg[1] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[1]_i_1_n_0 ),
        .Q(wait_counter[1]));
  FDCE \wait_counter_reg[20] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[20]_i_1_n_0 ),
        .Q(wait_counter[20]));
  FDCE \wait_counter_reg[21] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[21]_i_1_n_0 ),
        .Q(wait_counter[21]));
  FDCE \wait_counter_reg[22] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[22]_i_1_n_0 ),
        .Q(wait_counter[22]));
  FDCE \wait_counter_reg[23] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[23]_i_1_n_0 ),
        .Q(wait_counter[23]));
  FDCE \wait_counter_reg[24] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[24]_i_1_n_0 ),
        .Q(wait_counter[24]));
  FDCE \wait_counter_reg[25] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[25]_i_1_n_0 ),
        .Q(wait_counter[25]));
  FDCE \wait_counter_reg[26] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[26]_i_1_n_0 ),
        .Q(wait_counter[26]));
  FDCE \wait_counter_reg[27] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[27]_i_1_n_0 ),
        .Q(wait_counter[27]));
  FDCE \wait_counter_reg[28] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[28]_i_1_n_0 ),
        .Q(wait_counter[28]));
  FDCE \wait_counter_reg[29] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[29]_i_1_n_0 ),
        .Q(wait_counter[29]));
  FDCE \wait_counter_reg[2] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[2]_i_1_n_0 ),
        .Q(wait_counter[2]));
  FDCE \wait_counter_reg[30] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[30]_i_1_n_0 ),
        .Q(wait_counter[30]));
  FDCE \wait_counter_reg[31] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[31]_i_2_n_0 ),
        .Q(wait_counter[31]));
  FDCE \wait_counter_reg[3] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[3]_i_1_n_0 ),
        .Q(wait_counter[3]));
  FDCE \wait_counter_reg[4] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[4]_i_1_n_0 ),
        .Q(wait_counter[4]));
  FDCE \wait_counter_reg[5] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[5]_i_1_n_0 ),
        .Q(wait_counter[5]));
  FDCE \wait_counter_reg[6] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[6]_i_1_n_0 ),
        .Q(wait_counter[6]));
  FDCE \wait_counter_reg[7] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[7]_i_1_n_0 ),
        .Q(wait_counter[7]));
  FDCE \wait_counter_reg[8] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[8]_i_1_n_0 ),
        .Q(wait_counter[8]));
  FDCE \wait_counter_reg[9] 
       (.C(clk),
        .CE(\wait_counter[31]_i_1_n_0 ),
        .CLR(\read_data[7]_i_2_n_0 ),
        .D(\wait_counter[9]_i_1_n_0 ),
        .Q(wait_counter[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
