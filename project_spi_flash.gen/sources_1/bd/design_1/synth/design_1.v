//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Dec 26 12:20:27 2025
//Host        : LAPTOP-9FF0L5N1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in1_0,
    spi_cs_n_0,
    spi_miso_0,
    spi_mosi_0,
    spi_sck_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_0;
  output spi_cs_n_0;
  input spi_miso_0;
  output spi_mosi_0;
  output spi_sck_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire spi_miso_0_1;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
  wire [0:0]vio_0_probe_out2;
  wire [0:0]vio_0_probe_out3;
  wire [0:0]vio_0_probe_out4;
  wire [23:0]vio_0_probe_out5;
  wire [7:0]vio_0_probe_out6;
  wire w25q128_controller_0_busy;
  wire w25q128_controller_0_done;
  wire w25q128_controller_0_error;
  wire [23:0]w25q128_controller_0_jedec_id;
  wire [7:0]w25q128_controller_0_read_data;
  wire [7:0]w25q128_controller_0_shift;
  wire w25q128_controller_0_spi_cs_n;
  wire w25q128_controller_0_spi_mosi;
  wire w25q128_controller_0_spi_sck;

  assign clk_in1_0_1 = clk_in1_0;
  assign spi_cs_n_0 = w25q128_controller_0_spi_cs_n;
  assign spi_miso_0_1 = spi_miso_0;
  assign spi_mosi_0 = w25q128_controller_0_spi_mosi;
  assign spi_sck_0 = w25q128_controller_0_spi_sck;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out5),
        .probe10(w25q128_controller_0_shift),
        .probe2(w25q128_controller_0_read_data),
        .probe3(w25q128_controller_0_busy),
        .probe4(vio_0_probe_out6),
        .probe5(w25q128_controller_0_jedec_id),
        .probe6(w25q128_controller_0_spi_cs_n),
        .probe7(w25q128_controller_0_spi_sck),
        .probe8(w25q128_controller_0_spi_mosi),
        .probe9(spi_miso_0_1));
  design_1_vio_0_0 vio_0
       (.clk(clk_wiz_0_clk_out1),
        .probe_in0(w25q128_controller_0_read_data),
        .probe_in1(w25q128_controller_0_jedec_id),
        .probe_in2(w25q128_controller_0_busy),
        .probe_in3(w25q128_controller_0_done),
        .probe_in4(w25q128_controller_0_error),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2),
        .probe_out3(vio_0_probe_out3),
        .probe_out4(vio_0_probe_out4),
        .probe_out5(vio_0_probe_out5),
        .probe_out6(vio_0_probe_out6));
  design_1_w25q128_controller_0_0 w25q128_controller_0
       (.address(vio_0_probe_out5),
        .busy(w25q128_controller_0_busy),
        .clk(clk_wiz_0_clk_out1),
        .cmd_erase_sector(vio_0_probe_out4),
        .cmd_program(vio_0_probe_out3),
        .cmd_read(vio_0_probe_out2),
        .cmd_read_id(vio_0_probe_out1),
        .done(w25q128_controller_0_done),
        .error(w25q128_controller_0_error),
        .jedec_id(w25q128_controller_0_jedec_id),
        .read_data(w25q128_controller_0_read_data),
        .rst_n(vio_0_probe_out0),
        .shift_out(w25q128_controller_0_shift),
        .spi_cs_n(w25q128_controller_0_spi_cs_n),
        .spi_miso(spi_miso_0_1),
        .spi_mosi(w25q128_controller_0_spi_mosi),
        .spi_sck(w25q128_controller_0_spi_sck),
        .write_data(vio_0_probe_out6));
endmodule
