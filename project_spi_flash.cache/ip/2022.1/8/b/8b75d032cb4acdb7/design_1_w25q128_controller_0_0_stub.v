// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Dec 26 12:21:06 2025
// Host        : LAPTOP-9FF0L5N1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_w25q128_controller_0_0_stub.v
// Design      : design_1_w25q128_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "w25q128_controller,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, cmd_read_id, cmd_read, cmd_program, 
  cmd_erase_sector, address, write_data, read_data, jedec_id, busy, done, error, spi_cs_n, spi_sck, 
  spi_mosi, shift_out, spi_miso)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,cmd_read_id,cmd_read,cmd_program,cmd_erase_sector,address[23:0],write_data[7:0],read_data[7:0],jedec_id[23:0],busy,done,error,spi_cs_n,spi_sck,spi_mosi,shift_out[7:0],spi_miso" */;
  input clk;
  input rst_n;
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
endmodule
