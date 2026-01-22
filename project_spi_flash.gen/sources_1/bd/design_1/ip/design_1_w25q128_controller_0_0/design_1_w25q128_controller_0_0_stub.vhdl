-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Dec 26 12:21:06 2025
-- Host        : LAPTOP-9FF0L5N1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Kaynes/project_spi_flash/project_spi_flash.gen/sources_1/bd/design_1/ip/design_1_w25q128_controller_0_0/design_1_w25q128_controller_0_0_stub.vhdl
-- Design      : design_1_w25q128_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_w25q128_controller_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    cmd_read_id : in STD_LOGIC;
    cmd_read : in STD_LOGIC;
    cmd_program : in STD_LOGIC;
    cmd_erase_sector : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 23 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    jedec_id : out STD_LOGIC_VECTOR ( 23 downto 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    error : out STD_LOGIC;
    spi_cs_n : out STD_LOGIC;
    spi_sck : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    shift_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_miso : in STD_LOGIC
  );

end design_1_w25q128_controller_0_0;

architecture stub of design_1_w25q128_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,cmd_read_id,cmd_read,cmd_program,cmd_erase_sector,address[23:0],write_data[7:0],read_data[7:0],jedec_id[23:0],busy,done,error,spi_cs_n,spi_sck,spi_mosi,shift_out[7:0],spi_miso";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "w25q128_controller,Vivado 2022.1";
begin
end;
