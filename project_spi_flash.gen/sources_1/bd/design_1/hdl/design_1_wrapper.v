//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Dec 26 12:20:27 2025
//Host        : LAPTOP-9FF0L5N1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1_0,
    spi_cs_n_0,
    spi_miso_0,
    spi_mosi_0,
    spi_sck_0);
  input clk_in1_0;
  output spi_cs_n_0;
  input spi_miso_0;
  output spi_mosi_0;
  output spi_sck_0;

  wire clk_in1_0;
  wire spi_cs_n_0;
  wire spi_miso_0;
  wire spi_mosi_0;
  wire spi_sck_0;

  design_1 design_1_i
       (.clk_in1_0(clk_in1_0),
        .spi_cs_n_0(spi_cs_n_0),
        .spi_miso_0(spi_miso_0),
        .spi_mosi_0(spi_mosi_0),
        .spi_sck_0(spi_sck_0));
endmodule
