-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Dec 26 12:21:06 2025
-- Host        : LAPTOP-9FF0L5N1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Kaynes/project_spi_flash/project_spi_flash.gen/sources_1/bd/design_1/ip/design_1_w25q128_controller_0_0/design_1_w25q128_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_w25q128_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_w25q128_controller_0_0_w25q128_controller is
  port (
    read_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    jedec_id : out STD_LOGIC_VECTOR ( 23 downto 0 );
    shift_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_sck_reg_0 : out STD_LOGIC;
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    error : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_cs_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 23 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_read_id : in STD_LOGIC;
    cmd_program : in STD_LOGIC;
    cmd_read : in STD_LOGIC;
    cmd_erase_sector : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_w25q128_controller_0_0_w25q128_controller : entity is "w25q128_controller";
end design_1_w25q128_controller_0_0_w25q128_controller;

architecture STRUCTURE of design_1_w25q128_controller_0_0_w25q128_controller is
  signal \addr_buf[23]_i_1_n_0\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \bit_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_10_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_11_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_12_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_13_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_14_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_5_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_6_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_7_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_8_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_9_n_0\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_i_3_n_0 : STD_LOGIC;
  signal busy_i_4_n_0 : STD_LOGIC;
  signal byte_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \byte_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \byte_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \byte_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_4_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_5_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_4_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_5_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_6_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_7_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_8_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal data_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \^error\ : STD_LOGIC;
  signal error_i_10_n_0 : STD_LOGIC;
  signal error_i_11_n_0 : STD_LOGIC;
  signal error_i_12_n_0 : STD_LOGIC;
  signal error_i_13_n_0 : STD_LOGIC;
  signal error_i_1_n_0 : STD_LOGIC;
  signal error_i_2_n_0 : STD_LOGIC;
  signal error_i_3_n_0 : STD_LOGIC;
  signal error_i_4_n_0 : STD_LOGIC;
  signal error_i_5_n_0 : STD_LOGIC;
  signal error_i_6_n_0 : STD_LOGIC;
  signal error_i_7_n_0 : STD_LOGIC;
  signal error_i_8_n_0 : STD_LOGIC;
  signal error_i_9_n_0 : STD_LOGIC;
  signal first_access : STD_LOGIC;
  signal first_access_i_1_n_0 : STD_LOGIC;
  signal \jedec_id[15]_i_1_n_0\ : STD_LOGIC;
  signal \jedec_id[15]_i_2_n_0\ : STD_LOGIC;
  signal \jedec_id[15]_i_3_n_0\ : STD_LOGIC;
  signal \jedec_id[23]_i_1_n_0\ : STD_LOGIC;
  signal \jedec_id[23]_i_2_n_0\ : STD_LOGIC;
  signal \jedec_id[23]_i_3_n_0\ : STD_LOGIC;
  signal \jedec_id[7]_i_1_n_0\ : STD_LOGIC;
  signal load_shift_out_i_1_n_0 : STD_LOGIC;
  signal load_shift_out_i_2_n_0 : STD_LOGIC;
  signal load_shift_out_i_3_n_0 : STD_LOGIC;
  signal load_shift_out_reg_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \read_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \read_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \return_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \return_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[4]\ : STD_LOGIC;
  signal sck_count : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sck_count0_carry__0_n_0\ : STD_LOGIC;
  signal \sck_count0_carry__0_n_1\ : STD_LOGIC;
  signal \sck_count0_carry__0_n_2\ : STD_LOGIC;
  signal \sck_count0_carry__0_n_3\ : STD_LOGIC;
  signal \sck_count0_carry__1_n_0\ : STD_LOGIC;
  signal \sck_count0_carry__1_n_1\ : STD_LOGIC;
  signal \sck_count0_carry__1_n_2\ : STD_LOGIC;
  signal \sck_count0_carry__1_n_3\ : STD_LOGIC;
  signal \sck_count0_carry__2_n_2\ : STD_LOGIC;
  signal \sck_count0_carry__2_n_3\ : STD_LOGIC;
  signal sck_count0_carry_n_0 : STD_LOGIC;
  signal sck_count0_carry_n_1 : STD_LOGIC;
  signal sck_count0_carry_n_2 : STD_LOGIC;
  signal sck_count0_carry_n_3 : STD_LOGIC;
  signal \sck_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[15]_i_2_n_0\ : STD_LOGIC;
  signal \sck_count[15]_i_3_n_0\ : STD_LOGIC;
  signal \sck_count[15]_i_4_n_0\ : STD_LOGIC;
  signal \sck_count[15]_i_5_n_0\ : STD_LOGIC;
  signal \sck_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \sck_count[9]_i_1_n_0\ : STD_LOGIC;
  signal sck_enable_i_1_n_0 : STD_LOGIC;
  signal sck_enable_i_2_n_0 : STD_LOGIC;
  signal sck_enable_reg_n_0 : STD_LOGIC;
  signal sck_toggle16_out : STD_LOGIC;
  signal sck_toggle_reg_n_0 : STD_LOGIC;
  signal shift_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shift_in_0 : STD_LOGIC;
  signal \^shift_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[7]_i_2_n_0\ : STD_LOGIC;
  signal shift_out_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_out_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \shift_out_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \shift_out_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \shift_out_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \shift_out_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \shift_out_data[5]_i_7_n_0\ : STD_LOGIC;
  signal \shift_out_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \shift_out_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \shift_out_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \shift_out_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \^spi_cs_n\ : STD_LOGIC;
  signal spi_cs_n_i_10_n_0 : STD_LOGIC;
  signal spi_cs_n_i_11_n_0 : STD_LOGIC;
  signal spi_cs_n_i_12_n_0 : STD_LOGIC;
  signal spi_cs_n_i_13_n_0 : STD_LOGIC;
  signal spi_cs_n_i_14_n_0 : STD_LOGIC;
  signal spi_cs_n_i_15_n_0 : STD_LOGIC;
  signal spi_cs_n_i_16_n_0 : STD_LOGIC;
  signal spi_cs_n_i_17_n_0 : STD_LOGIC;
  signal spi_cs_n_i_18_n_0 : STD_LOGIC;
  signal spi_cs_n_i_19_n_0 : STD_LOGIC;
  signal spi_cs_n_i_1_n_0 : STD_LOGIC;
  signal spi_cs_n_i_20_n_0 : STD_LOGIC;
  signal spi_cs_n_i_21_n_0 : STD_LOGIC;
  signal spi_cs_n_i_2_n_0 : STD_LOGIC;
  signal spi_cs_n_i_3_n_0 : STD_LOGIC;
  signal spi_cs_n_i_4_n_0 : STD_LOGIC;
  signal spi_cs_n_i_5_n_0 : STD_LOGIC;
  signal spi_cs_n_i_6_n_0 : STD_LOGIC;
  signal spi_cs_n_i_7_n_0 : STD_LOGIC;
  signal spi_cs_n_i_8_n_0 : STD_LOGIC;
  signal spi_cs_n_i_9_n_0 : STD_LOGIC;
  signal \^spi_mosi\ : STD_LOGIC;
  signal spi_mosi_i_1_n_0 : STD_LOGIC;
  signal spi_sck_i_1_n_0 : STD_LOGIC;
  signal \^spi_sck_reg_0\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_10_n_0\ : STD_LOGIC;
  signal \state[1]_i_11_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[1]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_8_n_0\ : STD_LOGIC;
  signal \state[1]_i_9_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_10_n_0\ : STD_LOGIC;
  signal \state[3]_i_11_n_0\ : STD_LOGIC;
  signal \state[3]_i_12_n_0\ : STD_LOGIC;
  signal \state[3]_i_13_n_0\ : STD_LOGIC;
  signal \state[3]_i_14_n_0\ : STD_LOGIC;
  signal \state[3]_i_15_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  signal \state[3]_i_8_n_0\ : STD_LOGIC;
  signal \state[3]_i_9_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_6_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \state[4]_i_8_n_0\ : STD_LOGIC;
  signal \state[5]_i_10_n_0\ : STD_LOGIC;
  signal \state[5]_i_11_n_0\ : STD_LOGIC;
  signal \state[5]_i_12_n_0\ : STD_LOGIC;
  signal \state[5]_i_13_n_0\ : STD_LOGIC;
  signal \state[5]_i_14_n_0\ : STD_LOGIC;
  signal \state[5]_i_15_n_0\ : STD_LOGIC;
  signal \state[5]_i_16_n_0\ : STD_LOGIC;
  signal \state[5]_i_17_n_0\ : STD_LOGIC;
  signal \state[5]_i_18_n_0\ : STD_LOGIC;
  signal \state[5]_i_19_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_20_n_0\ : STD_LOGIC;
  signal \state[5]_i_21_n_0\ : STD_LOGIC;
  signal \state[5]_i_22_n_0\ : STD_LOGIC;
  signal \state[5]_i_2_n_0\ : STD_LOGIC;
  signal \state[5]_i_3_n_0\ : STD_LOGIC;
  signal \state[5]_i_4_n_0\ : STD_LOGIC;
  signal \state[5]_i_5_n_0\ : STD_LOGIC;
  signal \state[5]_i_6_n_0\ : STD_LOGIC;
  signal \state[5]_i_7_n_0\ : STD_LOGIC;
  signal \state[5]_i_8_n_0\ : STD_LOGIC;
  signal \state[5]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  signal \status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal timeout_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timeout_counter0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \timeout_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \timeout_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \timeout_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \timeout_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \timeout_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \timeout_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \timeout_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \timeout_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \timeout_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \timeout_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \timeout_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \timeout_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \timeout_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \timeout_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \timeout_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \timeout_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \timeout_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \timeout_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \timeout_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \timeout_counter0_carry__6_n_3\ : STD_LOGIC;
  signal timeout_counter0_carry_n_0 : STD_LOGIC;
  signal timeout_counter0_carry_n_1 : STD_LOGIC;
  signal timeout_counter0_carry_n_2 : STD_LOGIC;
  signal timeout_counter0_carry_n_3 : STD_LOGIC;
  signal \timeout_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal wait_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wait_counter0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \wait_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \wait_counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \wait_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \wait_counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \wait_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \wait_counter0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \wait_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \wait_counter0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \wait_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \wait_counter0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \wait_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \wait_counter0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \wait_counter0_carry__6_n_3\ : STD_LOGIC;
  signal wait_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal wait_counter0_carry_n_0 : STD_LOGIC;
  signal wait_counter0_carry_n_1 : STD_LOGIC;
  signal wait_counter0_carry_n_2 : STD_LOGIC;
  signal wait_counter0_carry_n_3 : STD_LOGIC;
  signal \wait_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \wait_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \wait_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_sck_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sck_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_timeout_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timeout_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_counter[0]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bit_counter[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_counter[5]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_counter[5]_i_14\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bit_counter[5]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bit_counter[5]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of busy_i_2 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of busy_i_3 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \byte_counter[1]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \byte_counter[1]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \byte_counter[1]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \byte_counter[2]_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \byte_counter[2]_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \byte_counter[2]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of error_i_8 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \jedec_id[15]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \jedec_id[15]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \jedec_id[23]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \jedec_id[23]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of load_shift_out_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of load_shift_out_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \return_state[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \return_state[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \return_state[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \return_state[4]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \return_state[4]_i_3\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sck_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sck_count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_count0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \sck_count[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sck_count[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sck_count[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sck_count[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sck_count[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sck_count[14]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sck_count[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sck_count[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sck_count[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sck_count[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sck_count[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sck_count[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sck_count[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sck_count[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sck_count[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sck_count[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of sck_enable_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of sck_toggle_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \shift_out[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_out[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_out[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \shift_out[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \shift_out[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \shift_out[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \shift_out[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \shift_out[7]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \shift_out_data[1]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \shift_out_data[1]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \shift_out_data[1]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \shift_out_data[2]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_out_data[3]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \shift_out_data[3]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \shift_out_data[4]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \shift_out_data[4]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_out_data[5]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \shift_out_data[5]_i_6\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \shift_out_data[5]_i_7\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \shift_out_data[6]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift_out_data[6]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \shift_out_data[6]_i_6\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \shift_out_data[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_out_data[7]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of spi_cs_n_i_10 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of spi_cs_n_i_11 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of spi_cs_n_i_13 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of spi_cs_n_i_15 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of spi_cs_n_i_18 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of spi_cs_n_i_20 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of spi_cs_n_i_21 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of spi_cs_n_i_7 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of spi_cs_n_i_8 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of spi_sck_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \state[0]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[1]_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \state[1]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[1]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[1]_i_8\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[3]_i_13\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \state[3]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[3]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \state[3]_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \state[4]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[4]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[4]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[4]_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state[5]_i_12\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \state[5]_i_13\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \state[5]_i_17\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[5]_i_18\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[5]_i_19\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \state[5]_i_21\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \state[5]_i_22\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \state[5]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[5]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[5]_i_9\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of timeout_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout_counter0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \timeout_counter[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \timeout_counter[10]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \timeout_counter[11]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \timeout_counter[12]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \timeout_counter[13]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \timeout_counter[14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \timeout_counter[15]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \timeout_counter[16]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \timeout_counter[17]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \timeout_counter[18]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \timeout_counter[19]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \timeout_counter[20]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \timeout_counter[21]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \timeout_counter[22]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \timeout_counter[23]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \timeout_counter[24]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \timeout_counter[25]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \timeout_counter[26]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \timeout_counter[27]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \timeout_counter[28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \timeout_counter[29]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \timeout_counter[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \timeout_counter[30]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \timeout_counter[31]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \timeout_counter[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \timeout_counter[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \timeout_counter[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \timeout_counter[6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \timeout_counter[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \timeout_counter[8]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \timeout_counter[9]_i_1\ : label is "soft_lutpair69";
  attribute ADDER_THRESHOLD of wait_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \wait_counter[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wait_counter[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wait_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_counter[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_counter[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wait_counter[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_counter[9]_i_1\ : label is "soft_lutpair16";
begin
  busy <= \^busy\;
  done <= \^done\;
  error <= \^error\;
  shift_out(7 downto 0) <= \^shift_out\(7 downto 0);
  spi_cs_n <= \^spi_cs_n\;
  spi_mosi <= \^spi_mosi\;
  spi_sck_reg_0 <= \^spi_sck_reg_0\;
\addr_buf[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00000000"
    )
        port map (
      I0 => cmd_erase_sector,
      I1 => cmd_program,
      I2 => cmd_read,
      I3 => cmd_read_id,
      I4 => first_access,
      I5 => busy_i_4_n_0,
      O => \addr_buf[23]_i_1_n_0\
    );
\addr_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(0),
      Q => \addr_buf_reg_n_0_[0]\
    );
\addr_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(10),
      Q => p_1_in(2)
    );
\addr_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(11),
      Q => p_1_in(3)
    );
\addr_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(12),
      Q => p_1_in(4)
    );
\addr_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(13),
      Q => p_1_in(5)
    );
\addr_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(14),
      Q => p_1_in(6)
    );
\addr_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(15),
      Q => p_1_in(7)
    );
\addr_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(16),
      Q => p_2_in(0)
    );
\addr_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(17),
      Q => p_2_in(1)
    );
\addr_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(18),
      Q => p_2_in(2)
    );
\addr_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(19),
      Q => p_2_in(3)
    );
\addr_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(1),
      Q => \addr_buf_reg_n_0_[1]\
    );
\addr_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(20),
      Q => p_2_in(4)
    );
\addr_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(21),
      Q => p_2_in(5)
    );
\addr_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(22),
      Q => p_2_in(6)
    );
\addr_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(23),
      Q => p_2_in(7)
    );
\addr_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(2),
      Q => \addr_buf_reg_n_0_[2]\
    );
\addr_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(3),
      Q => \addr_buf_reg_n_0_[3]\
    );
\addr_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(4),
      Q => \addr_buf_reg_n_0_[4]\
    );
\addr_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(5),
      Q => \addr_buf_reg_n_0_[5]\
    );
\addr_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(6),
      Q => \addr_buf_reg_n_0_[6]\
    );
\addr_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(7),
      Q => \addr_buf_reg_n_0_[7]\
    );
\addr_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(8),
      Q => p_1_in(0)
    );
\addr_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_buf[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => address(9),
      Q => p_1_in(1)
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0E0A0A0A"
    )
        port map (
      I0 => \bit_counter[1]_i_2_n_0\,
      I1 => \bit_counter[0]_i_2_n_0\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => sck_toggle_reg_n_0,
      I5 => \^spi_sck_reg_0\,
      O => \bit_counter[0]_i_1_n_0\
    );
\bit_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      O => \bit_counter[0]_i_2_n_0\
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C00A"
    )
        port map (
      I0 => \bit_counter[1]_i_2_n_0\,
      I1 => \bit_counter[5]_i_9_n_0\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      O => \bit_counter[1]_i_1_n_0\
    );
\bit_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A800"
    )
        port map (
      I0 => \bit_counter[0]_i_2_n_0\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[2]\,
      I3 => sck_toggle_reg_n_0,
      I4 => \^spi_sck_reg_0\,
      I5 => \bit_counter[2]_i_3_n_0\,
      O => \bit_counter[1]_i_2_n_0\
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A00FA0A0A00C"
    )
        port map (
      I0 => \bit_counter[5]_i_9_n_0\,
      I1 => \bit_counter[2]_i_2_n_0\,
      I2 => \bit_counter_reg_n_0_[2]\,
      I3 => \bit_counter_reg_n_0_[0]\,
      I4 => \bit_counter_reg_n_0_[1]\,
      I5 => \bit_counter[2]_i_3_n_0\,
      O => \bit_counter[2]_i_1_n_0\
    );
\bit_counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044444000004440"
    )
        port map (
      I0 => \bit_counter[5]_i_14_n_0\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[3]\,
      O => \bit_counter[2]_i_2_n_0\
    );
\bit_counter[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A800"
    )
        port map (
      I0 => \bit_counter[0]_i_2_n_0\,
      I1 => \bit_counter_reg_n_0_[5]\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => sck_toggle_reg_n_0,
      I4 => \^spi_sck_reg_0\,
      I5 => \bit_counter[5]_i_8_n_0\,
      O => \bit_counter[2]_i_3_n_0\
    );
\bit_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAB"
    )
        port map (
      I0 => \bit_counter[3]_i_2_n_0\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => \bit_counter_reg_n_0_[3]\,
      I5 => \bit_counter[3]_i_3_n_0\,
      O => \bit_counter[3]_i_1_n_0\
    );
\bit_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000A080FAFA0"
    )
        port map (
      I0 => \bit_counter[5]_i_14_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \bit_counter[3]_i_2_n_0\
    );
\bit_counter[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001000D0"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[4]\,
      O => \bit_counter[3]_i_3_n_0\
    );
\bit_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A00FA00C"
    )
        port map (
      I0 => \bit_counter[5]_i_9_n_0\,
      I1 => \bit_counter[4]_i_2_n_0\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => \bit_counter[5]_i_10_n_0\,
      I4 => \bit_counter[5]_i_8_n_0\,
      O => \bit_counter[4]_i_1_n_0\
    );
\bit_counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044444000004440"
    )
        port map (
      I0 => \bit_counter[5]_i_14_n_0\,
      I1 => \bit_counter_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[3]\,
      O => \bit_counter[4]_i_2_n_0\
    );
\bit_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8F88"
    )
        port map (
      I0 => \bit_counter[5]_i_3_n_0\,
      I1 => \bit_counter[5]_i_4_n_0\,
      I2 => \state[5]_i_7_n_0\,
      I3 => \bit_counter[5]_i_5_n_0\,
      I4 => \bit_counter[5]_i_6_n_0\,
      I5 => \bit_counter[5]_i_7_n_0\,
      O => \bit_counter[5]_i_1_n_0\
    );
\bit_counter[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[3]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[0]\,
      O => \bit_counter[5]_i_10_n_0\
    );
\bit_counter[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000005050A0F0E"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[4]\,
      O => \bit_counter[5]_i_11_n_0\
    );
\bit_counter[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000400040C"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[4]\,
      O => \bit_counter[5]_i_12_n_0\
    );
\bit_counter[5]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[5]\,
      O => \bit_counter[5]_i_13_n_0\
    );
\bit_counter[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^spi_sck_reg_0\,
      I1 => sck_toggle_reg_n_0,
      O => \bit_counter[5]_i_14_n_0\
    );
\bit_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC0000A"
    )
        port map (
      I0 => \bit_counter[5]_i_8_n_0\,
      I1 => \bit_counter[5]_i_9_n_0\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => \bit_counter[5]_i_10_n_0\,
      I4 => \bit_counter_reg_n_0_[5]\,
      O => \bit_counter[5]_i_2_n_0\
    );
\bit_counter[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_data[7]_i_4_n_0\,
      I1 => \state_reg_n_0_[0]\,
      O => \bit_counter[5]_i_3_n_0\
    );
\bit_counter[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAFFF0000000C"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state[4]_i_4_n_0\,
      I2 => byte_counter(0),
      I3 => byte_counter(1),
      I4 => byte_counter(2),
      I5 => \jedec_id[15]_i_2_n_0\,
      O => \bit_counter[5]_i_4_n_0\
    );
\bit_counter[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C300040004"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[3]\,
      O => \bit_counter[5]_i_5_n_0\
    );
\bit_counter[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^spi_sck_reg_0\,
      I1 => sck_toggle_reg_n_0,
      I2 => \read_data[7]_i_4_n_0\,
      I3 => \bit_counter[5]_i_11_n_0\,
      O => \bit_counter[5]_i_6_n_0\
    );
\bit_counter[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAEAEAE"
    )
        port map (
      I0 => \bit_counter[5]_i_12_n_0\,
      I1 => \bit_counter[5]_i_13_n_0\,
      I2 => \read_data[7]_i_4_n_0\,
      I3 => \state[3]_i_5_n_0\,
      I4 => \jedec_id[15]_i_3_n_0\,
      I5 => \byte_counter[2]_i_5_n_0\,
      O => \bit_counter[5]_i_7_n_0\
    );
\bit_counter[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEAB085"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      O => \bit_counter[5]_i_8_n_0\
    );
\bit_counter[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEAB085AFEFFA8F"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \bit_counter[5]_i_14_n_0\,
      O => \bit_counter[5]_i_9_n_0\
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bit_counter[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \bit_counter[0]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[0]\
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bit_counter[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \bit_counter[1]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[1]\
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bit_counter[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \bit_counter[2]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[2]\
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bit_counter[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \bit_counter[3]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[3]\
    );
\bit_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bit_counter[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \bit_counter[4]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[4]\
    );
\bit_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bit_counter[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \bit_counter[5]_i_2_n_0\,
      Q => \bit_counter_reg_n_0_[5]\
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F3FF22220000"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => busy_i_3_n_0,
      I4 => busy_i_4_n_0,
      I5 => \^busy\,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cmd_program,
      I1 => cmd_erase_sector,
      I2 => cmd_read,
      I3 => cmd_read_id,
      I4 => first_access,
      O => busy_i_2_n_0
    );
busy_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      O => busy_i_3_n_0
    );
busy_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => busy_i_4_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => busy_i_1_n_0,
      Q => \^busy\
    );
\byte_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => \byte_counter[0]_i_2_n_0\,
      I1 => \byte_counter[0]_i_3_n_0\,
      I2 => \byte_counter[0]_i_4_n_0\,
      I3 => \byte_counter[2]_i_2_n_0\,
      I4 => byte_counter(0),
      O => \byte_counter[0]_i_1_n_0\
    );
\byte_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAA000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \jedec_id[23]_i_2_n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \byte_counter[0]_i_2_n_0\
    );
\byte_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF020002"
    )
        port map (
      I0 => \shift_out_data[4]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[3]\,
      O => \byte_counter[0]_i_3_n_0\
    );
\byte_counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000110011"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => byte_counter(0),
      I2 => \jedec_id[23]_i_2_n_0\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[1]\,
      O => \byte_counter[0]_i_4_n_0\
    );
\byte_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFFFFAAEA0000"
    )
        port map (
      I0 => \byte_counter[1]_i_2_n_0\,
      I1 => \byte_counter[1]_i_3_n_0\,
      I2 => \jedec_id[15]_i_3_n_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \byte_counter[2]_i_2_n_0\,
      I5 => byte_counter(1),
      O => \byte_counter[1]_i_1_n_0\
    );
\byte_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFCA8BEAABCA8"
    )
        port map (
      I0 => \byte_counter[1]_i_4_n_0\,
      I1 => byte_counter(0),
      I2 => byte_counter(1),
      I3 => \byte_counter[1]_i_5_n_0\,
      I4 => byte_counter(2),
      I5 => \state_reg_n_0_[1]\,
      O => \byte_counter[1]_i_2_n_0\
    );
\byte_counter[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      O => \byte_counter[1]_i_3_n_0\
    );
\byte_counter[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \byte_counter[1]_i_4_n_0\
    );
\byte_counter[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => \byte_counter[1]_i_5_n_0\
    );
\byte_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111FFFF10000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => byte_counter(1),
      I3 => byte_counter(0),
      I4 => \byte_counter[2]_i_2_n_0\,
      I5 => byte_counter(2),
      O => \byte_counter[2]_i_1_n_0\
    );
\byte_counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABAA"
    )
        port map (
      I0 => \byte_counter[2]_i_3_n_0\,
      I1 => \byte_counter[2]_i_4_n_0\,
      I2 => spi_cs_n_i_6_n_0,
      I3 => \wait_counter[31]_i_3_n_0\,
      I4 => \byte_counter[2]_i_5_n_0\,
      I5 => \byte_counter[2]_i_6_n_0\,
      O => \byte_counter[2]_i_2_n_0\
    );
\byte_counter[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F222"
    )
        port map (
      I0 => \state[4]_i_4_n_0\,
      I1 => \byte_counter[1]_i_3_n_0\,
      I2 => \jedec_id[15]_i_2_n_0\,
      I3 => \byte_counter[2]_i_7_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \read_data[7]_i_4_n_0\,
      O => \byte_counter[2]_i_3_n_0\
    );
\byte_counter[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => spi_cs_n_i_16_n_0,
      I1 => \byte_counter[2]_i_8_n_0\,
      I2 => spi_cs_n_i_17_n_0,
      I3 => \byte_counter[2]_i_9_n_0\,
      O => \byte_counter[2]_i_4_n_0\
    );
\byte_counter[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000808"
    )
        port map (
      I0 => \state[4]_i_4_n_0\,
      I1 => \jedec_id[15]_i_3_n_0\,
      I2 => \read_data[7]_i_4_n_0\,
      I3 => byte_counter(1),
      I4 => byte_counter(2),
      I5 => byte_counter(0),
      O => \byte_counter[2]_i_5_n_0\
    );
\byte_counter[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAB0000AAAA"
    )
        port map (
      I0 => spi_cs_n_i_20_n_0,
      I1 => \read_data[7]_i_4_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state[5]_i_12_n_0\,
      I4 => \read_data[7]_i_3_n_0\,
      I5 => \byte_counter[2]_i_7_n_0\,
      O => \byte_counter[2]_i_6_n_0\
    );
\byte_counter[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => byte_counter(0),
      I1 => byte_counter(2),
      I2 => byte_counter(1),
      O => \byte_counter[2]_i_7_n_0\
    );
\byte_counter[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(1),
      I1 => wait_counter(0),
      I2 => wait_counter(3),
      I3 => wait_counter(2),
      O => \byte_counter[2]_i_8_n_0\
    );
\byte_counter[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(9),
      I1 => wait_counter(8),
      I2 => wait_counter(11),
      I3 => wait_counter(10),
      O => \byte_counter[2]_i_9_n_0\
    );
\byte_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \byte_counter[0]_i_1_n_0\,
      Q => byte_counter(0)
    );
\byte_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \byte_counter[1]_i_1_n_0\,
      Q => byte_counter(1)
    );
\byte_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \byte_counter[2]_i_1_n_0\,
      Q => byte_counter(2)
    );
\data_buf[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => busy_i_4_n_0,
      I1 => cmd_program,
      I2 => cmd_read_id,
      I3 => cmd_read,
      I4 => first_access,
      O => \data_buf[7]_i_1_n_0\
    );
\data_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(0),
      Q => data_buf(0)
    );
\data_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(1),
      Q => data_buf(1)
    );
\data_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(2),
      Q => data_buf(2)
    );
\data_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(3),
      Q => data_buf(3)
    );
\data_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(4),
      Q => data_buf(4)
    );
\data_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(5),
      Q => data_buf(5)
    );
\data_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(6),
      Q => data_buf(6)
    );
\data_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_buf[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => write_data(7),
      Q => data_buf(7)
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00200000"
    )
        port map (
      I0 => \jedec_id[15]_i_3_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \^done\,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => done_i_1_n_0,
      Q => \^done\
    );
error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEF4F4FEEE04040"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => error_i_2_n_0,
      I3 => error_i_3_n_0,
      I4 => error_i_4_n_0,
      I5 => \^error\,
      O => error_i_1_n_0
    );
error_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => timeout_counter(25),
      I1 => timeout_counter(20),
      I2 => timeout_counter(21),
      I3 => timeout_counter(23),
      I4 => timeout_counter(22),
      I5 => timeout_counter(19),
      O => error_i_10_n_0
    );
error_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => timeout_counter(13),
      I1 => timeout_counter(12),
      I2 => timeout_counter(15),
      I3 => timeout_counter(14),
      O => error_i_11_n_0
    );
error_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timeout_counter(9),
      I1 => timeout_counter(8),
      I2 => timeout_counter(11),
      I3 => timeout_counter(10),
      O => error_i_12_n_0
    );
error_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timeout_counter(2),
      I1 => timeout_counter(1),
      I2 => timeout_counter(4),
      I3 => timeout_counter(3),
      O => error_i_13_n_0
    );
error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000001"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[4]\,
      O => error_i_2_n_0
    );
error_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => error_i_3_n_0
    );
error_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => error_i_5_n_0,
      I1 => error_i_6_n_0,
      I2 => error_i_7_n_0,
      I3 => error_i_8_n_0,
      I4 => timeout_counter(7),
      I5 => error_i_9_n_0,
      O => error_i_4_n_0
    );
error_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => timeout_counter(18),
      I1 => error_i_10_n_0,
      I2 => timeout_counter(25),
      I3 => timeout_counter(24),
      O => error_i_5_n_0
    );
error_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000000"
    )
        port map (
      I0 => error_i_11_n_0,
      I1 => error_i_12_n_0,
      I2 => timeout_counter(16),
      I3 => error_i_10_n_0,
      I4 => timeout_counter(17),
      O => error_i_6_n_0
    );
error_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => timeout_counter(30),
      I1 => timeout_counter(31),
      I2 => timeout_counter(28),
      I3 => timeout_counter(29),
      I4 => timeout_counter(27),
      I5 => timeout_counter(26),
      O => error_i_7_n_0
    );
error_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => error_i_13_n_0,
      I1 => timeout_counter(0),
      I2 => timeout_counter(5),
      I3 => timeout_counter(6),
      O => error_i_8_n_0
    );
error_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => timeout_counter(17),
      I1 => error_i_10_n_0,
      I2 => timeout_counter(14),
      I3 => timeout_counter(15),
      I4 => timeout_counter(12),
      I5 => timeout_counter(13),
      O => error_i_9_n_0
    );
error_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => error_i_1_n_0,
      Q => \^error\
    );
first_access_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => first_access,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \jedec_id[15]_i_3_n_0\,
      O => first_access_i_1_n_0
    );
first_access_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => first_access_i_1_n_0,
      PRE => \read_data[7]_i_2_n_0\,
      Q => first_access
    );
\jedec_id[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \jedec_id[15]_i_2_n_0\,
      I1 => byte_counter(2),
      I2 => byte_counter(1),
      I3 => byte_counter(0),
      I4 => \read_data[7]_i_4_n_0\,
      I5 => \jedec_id[15]_i_3_n_0\,
      O => \jedec_id[15]_i_1_n_0\
    );
\jedec_id[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      O => \jedec_id[15]_i_2_n_0\
    );
\jedec_id[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \jedec_id[15]_i_3_n_0\
    );
\jedec_id[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \jedec_id[23]_i_2_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \jedec_id[23]_i_3_n_0\,
      O => \jedec_id[23]_i_1_n_0\
    );
\jedec_id[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      O => \jedec_id[23]_i_2_n_0\
    );
\jedec_id[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \read_data[7]_i_4_n_0\,
      O => \jedec_id[23]_i_3_n_0\
    );
\jedec_id[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      I3 => \jedec_id[15]_i_2_n_0\,
      I4 => \read_data[7]_i_4_n_0\,
      I5 => \jedec_id[15]_i_3_n_0\,
      O => \jedec_id[7]_i_1_n_0\
    );
\jedec_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(0),
      Q => jedec_id(0)
    );
\jedec_id_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(2),
      Q => jedec_id(10)
    );
\jedec_id_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(3),
      Q => jedec_id(11)
    );
\jedec_id_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(4),
      Q => jedec_id(12)
    );
\jedec_id_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(5),
      Q => jedec_id(13)
    );
\jedec_id_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(6),
      Q => jedec_id(14)
    );
\jedec_id_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(7),
      Q => jedec_id(15)
    );
\jedec_id_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(0),
      Q => jedec_id(16)
    );
\jedec_id_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(1),
      Q => jedec_id(17)
    );
\jedec_id_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(2),
      Q => jedec_id(18)
    );
\jedec_id_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(3),
      Q => jedec_id(19)
    );
\jedec_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(1),
      Q => jedec_id(1)
    );
\jedec_id_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(4),
      Q => jedec_id(20)
    );
\jedec_id_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(5),
      Q => jedec_id(21)
    );
\jedec_id_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(6),
      Q => jedec_id(22)
    );
\jedec_id_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[23]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(7),
      Q => jedec_id(23)
    );
\jedec_id_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(2),
      Q => jedec_id(2)
    );
\jedec_id_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(3),
      Q => jedec_id(3)
    );
\jedec_id_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(4),
      Q => jedec_id(4)
    );
\jedec_id_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(5),
      Q => jedec_id(5)
    );
\jedec_id_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(6),
      Q => jedec_id(6)
    );
\jedec_id_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(7),
      Q => jedec_id(7)
    );
\jedec_id_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(0),
      Q => jedec_id(8)
    );
\jedec_id_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \jedec_id[15]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(1),
      Q => jedec_id(9)
    );
load_shift_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFEAAFEAAFE"
    )
        port map (
      I0 => \bit_counter[5]_i_7_n_0\,
      I1 => load_shift_out_i_2_n_0,
      I2 => load_shift_out_i_3_n_0,
      I3 => \state[5]_i_7_n_0\,
      I4 => \bit_counter[5]_i_4_n_0\,
      I5 => \bit_counter[5]_i_3_n_0\,
      O => load_shift_out_i_1_n_0
    );
load_shift_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000002"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      O => load_shift_out_i_2_n_0
    );
load_shift_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => load_shift_out_i_3_n_0
    );
load_shift_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => load_shift_out_i_1_n_0,
      Q => load_shift_out_reg_n_0
    );
\read_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \read_data[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \read_data[7]_i_4_n_0\,
      O => \read_data[7]_i_1_n_0\
    );
\read_data[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \read_data[7]_i_2_n_0\
    );
\read_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \read_data[7]_i_3_n_0\
    );
\read_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[5]\,
      I1 => \bit_counter_reg_n_0_[4]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => \bit_counter_reg_n_0_[2]\,
      I5 => \bit_counter_reg_n_0_[3]\,
      O => \read_data[7]_i_4_n_0\
    );
\read_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(0),
      Q => read_data(0)
    );
\read_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(1),
      Q => read_data(1)
    );
\read_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(2),
      Q => read_data(2)
    );
\read_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(3),
      Q => read_data(3)
    );
\read_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(4),
      Q => read_data(4)
    );
\read_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(5),
      Q => read_data(5)
    );
\read_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(6),
      Q => read_data(6)
    );
\read_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \read_data[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(7),
      Q => read_data(7)
    );
\return_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => cmd_program,
      O => \return_state[0]_i_1_n_0\
    );
\return_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      O => \return_state[1]_i_1_n_0\
    );
\return_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => cmd_program,
      O => \return_state[2]_i_1_n_0\
    );
\return_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8F0F0F0F0"
    )
        port map (
      I0 => \return_state[4]_i_3_n_0\,
      I1 => \state[4]_i_4_n_0\,
      I2 => \return_state[4]_i_4_n_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state[3]_i_3_n_0\,
      I5 => \jedec_id[23]_i_3_n_0\,
      O => \return_state[4]_i_1_n_0\
    );
\return_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      O => \return_state[4]_i_2_n_0\
    );
\return_state[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => byte_counter(2),
      O => \return_state[4]_i_3_n_0\
    );
\return_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000000"
    )
        port map (
      I0 => cmd_read_id,
      I1 => cmd_read,
      I2 => first_access,
      I3 => cmd_program,
      I4 => cmd_erase_sector,
      I5 => busy_i_4_n_0,
      O => \return_state[4]_i_4_n_0\
    );
\return_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \return_state[0]_i_1_n_0\,
      Q => \return_state_reg_n_0_[0]\
    );
\return_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \return_state[1]_i_1_n_0\,
      Q => \return_state_reg_n_0_[1]\
    );
\return_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \return_state[2]_i_1_n_0\,
      Q => \return_state_reg_n_0_[2]\
    );
\return_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \return_state[4]_i_2_n_0\,
      Q => \return_state_reg_n_0_[4]\
    );
sck_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sck_count0_carry_n_0,
      CO(2) => sck_count0_carry_n_1,
      CO(1) => sck_count0_carry_n_2,
      CO(0) => sck_count0_carry_n_3,
      CYINIT => sck_count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => sck_count(4 downto 1)
    );
\sck_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sck_count0_carry_n_0,
      CO(3) => \sck_count0_carry__0_n_0\,
      CO(2) => \sck_count0_carry__0_n_1\,
      CO(1) => \sck_count0_carry__0_n_2\,
      CO(0) => \sck_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => sck_count(8 downto 5)
    );
\sck_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_count0_carry__0_n_0\,
      CO(3) => \sck_count0_carry__1_n_0\,
      CO(2) => \sck_count0_carry__1_n_1\,
      CO(1) => \sck_count0_carry__1_n_2\,
      CO(0) => \sck_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => sck_count(12 downto 9)
    );
\sck_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_count0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_sck_count0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sck_count0_carry__2_n_2\,
      CO(0) => \sck_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sck_count0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => sck_count(15 downto 13)
    );
\sck_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sck_count(0),
      I1 => sck_enable_reg_n_0,
      I2 => \sck_count[15]_i_2_n_0\,
      O => \sck_count[0]_i_1_n_0\
    );
\sck_count[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(10),
      O => \sck_count[10]_i_1_n_0\
    );
\sck_count[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(11),
      O => \sck_count[11]_i_1_n_0\
    );
\sck_count[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(12),
      O => \sck_count[12]_i_1_n_0\
    );
\sck_count[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(13),
      O => \sck_count[13]_i_1_n_0\
    );
\sck_count[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(14),
      O => \sck_count[14]_i_1_n_0\
    );
\sck_count[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(15),
      O => \sck_count[15]_i_1_n_0\
    );
\sck_count[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sck_count[15]_i_3_n_0\,
      I1 => \sck_count[15]_i_4_n_0\,
      I2 => sck_count(15),
      I3 => sck_count(14),
      I4 => sck_count(1),
      I5 => \sck_count[15]_i_5_n_0\,
      O => \sck_count[15]_i_2_n_0\
    );
\sck_count[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sck_count(7),
      I1 => sck_count(6),
      I2 => sck_count(9),
      I3 => sck_count(8),
      O => \sck_count[15]_i_3_n_0\
    );
\sck_count[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sck_count(2),
      I1 => sck_count(3),
      I2 => sck_count(5),
      I3 => sck_count(4),
      O => \sck_count[15]_i_4_n_0\
    );
\sck_count[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sck_count(11),
      I1 => sck_count(10),
      I2 => sck_count(13),
      I3 => sck_count(12),
      O => \sck_count[15]_i_5_n_0\
    );
\sck_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(1),
      O => \sck_count[1]_i_1_n_0\
    );
\sck_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(2),
      O => \sck_count[2]_i_1_n_0\
    );
\sck_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(3),
      O => \sck_count[3]_i_1_n_0\
    );
\sck_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(4),
      O => \sck_count[4]_i_1_n_0\
    );
\sck_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(5),
      O => \sck_count[5]_i_1_n_0\
    );
\sck_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(6),
      O => \sck_count[6]_i_1_n_0\
    );
\sck_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(7),
      O => \sck_count[7]_i_1_n_0\
    );
\sck_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(8),
      O => \sck_count[8]_i_1_n_0\
    );
\sck_count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sck_count(0),
      I1 => \sck_count[15]_i_2_n_0\,
      I2 => sck_enable_reg_n_0,
      I3 => data0(9),
      O => \sck_count[9]_i_1_n_0\
    );
\sck_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[0]_i_1_n_0\,
      Q => sck_count(0)
    );
\sck_count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[10]_i_1_n_0\,
      Q => sck_count(10)
    );
\sck_count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[11]_i_1_n_0\,
      Q => sck_count(11)
    );
\sck_count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[12]_i_1_n_0\,
      Q => sck_count(12)
    );
\sck_count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[13]_i_1_n_0\,
      Q => sck_count(13)
    );
\sck_count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[14]_i_1_n_0\,
      Q => sck_count(14)
    );
\sck_count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[15]_i_1_n_0\,
      Q => sck_count(15)
    );
\sck_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[1]_i_1_n_0\,
      Q => sck_count(1)
    );
\sck_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[2]_i_1_n_0\,
      Q => sck_count(2)
    );
\sck_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[3]_i_1_n_0\,
      Q => sck_count(3)
    );
\sck_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[4]_i_1_n_0\,
      Q => sck_count(4)
    );
\sck_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[5]_i_1_n_0\,
      Q => sck_count(5)
    );
\sck_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[6]_i_1_n_0\,
      Q => sck_count(6)
    );
\sck_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[7]_i_1_n_0\,
      Q => sck_count(7)
    );
\sck_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[8]_i_1_n_0\,
      Q => sck_count(8)
    );
\sck_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \sck_count[9]_i_1_n_0\,
      Q => sck_count(9)
    );
sck_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sck_enable_i_2_n_0,
      I1 => spi_cs_n_i_3_n_0,
      I2 => sck_enable_reg_n_0,
      O => sck_enable_i_1_n_0
    );
sck_enable_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0330C370"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      O => sck_enable_i_2_n_0
    );
sck_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => sck_enable_i_1_n_0,
      Q => sck_enable_reg_n_0
    );
sck_toggle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \sck_count[15]_i_2_n_0\,
      I1 => sck_count(0),
      I2 => sck_enable_reg_n_0,
      O => sck_toggle16_out
    );
sck_toggle_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => sck_toggle16_out,
      Q => sck_toggle_reg_n_0
    );
\shift_in[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => load_shift_out_reg_n_0,
      I1 => sck_enable_reg_n_0,
      I2 => sck_toggle_reg_n_0,
      I3 => \^spi_sck_reg_0\,
      O => shift_in_0
    );
\shift_in_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => spi_miso,
      Q => shift_in(0)
    );
\shift_in_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(0),
      Q => shift_in(1)
    );
\shift_in_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(1),
      Q => shift_in(2)
    );
\shift_in_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(2),
      Q => shift_in(3)
    );
\shift_in_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(3),
      Q => shift_in(4)
    );
\shift_in_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(4),
      Q => shift_in(5)
    );
\shift_in_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(5),
      Q => shift_in(6)
    );
\shift_in_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => shift_in_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => shift_in(6),
      Q => shift_in(7)
    );
\shift_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => load_shift_out_reg_n_0,
      I1 => shift_out_data(0),
      O => \shift_out[0]_i_1_n_0\
    );
\shift_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(1),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(0),
      O => \shift_out[1]_i_1_n_0\
    );
\shift_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(2),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(1),
      O => \shift_out[2]_i_1_n_0\
    );
\shift_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(3),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(2),
      O => \shift_out[3]_i_1_n_0\
    );
\shift_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(4),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(3),
      O => \shift_out[4]_i_1_n_0\
    );
\shift_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(5),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(4),
      O => \shift_out[5]_i_1_n_0\
    );
\shift_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(6),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(5),
      O => \shift_out[6]_i_1_n_0\
    );
\shift_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^spi_sck_reg_0\,
      I1 => sck_toggle_reg_n_0,
      I2 => sck_enable_reg_n_0,
      I3 => load_shift_out_reg_n_0,
      O => \shift_out[7]_i_1_n_0\
    );
\shift_out[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_out_data(7),
      I1 => load_shift_out_reg_n_0,
      I2 => \^shift_out\(6),
      O => \shift_out[7]_i_2_n_0\
    );
\shift_out_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00D0"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \shift_out_data[0]_i_2_n_0\,
      I5 => \shift_out_data[0]_i_3_n_0\,
      O => \shift_out_data[0]_i_1_n_0\
    );
\shift_out_data[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => data_buf(0),
      I1 => \shift_out_data[3]_i_3_n_0\,
      I2 => \return_state[4]_i_3_n_0\,
      I3 => \addr_buf_reg_n_0_[0]\,
      I4 => \shift_out_data[2]_i_5_n_0\,
      O => \shift_out_data[0]_i_2_n_0\
    );
\shift_out_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFAAAEAEA"
    )
        port map (
      I0 => \shift_out_data[3]_i_4_n_0\,
      I1 => p_2_in(0),
      I2 => \shift_out_data[2]_i_6_n_0\,
      I3 => p_1_in(0),
      I4 => byte_counter(0),
      I5 => \shift_out_data[4]_i_3_n_0\,
      O => \shift_out_data[0]_i_3_n_0\
    );
\shift_out_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAAB"
    )
        port map (
      I0 => \shift_out_data[1]_i_2_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \shift_out_data[1]_i_3_n_0\,
      I5 => \shift_out_data[1]_i_4_n_0\,
      O => \shift_out_data[1]_i_1_n_0\
    );
\shift_out_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0332003200320032"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \shift_out_data[4]_i_3_n_0\,
      I5 => \addr_buf_reg_n_0_[1]\,
      O => \shift_out_data[1]_i_2_n_0\
    );
\shift_out_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFAAAEAEA"
    )
        port map (
      I0 => \shift_out_data[3]_i_4_n_0\,
      I1 => p_2_in(1),
      I2 => \shift_out_data[1]_i_5_n_0\,
      I3 => p_1_in(1),
      I4 => byte_counter(0),
      I5 => \shift_out_data[4]_i_3_n_0\,
      O => \shift_out_data[1]_i_3_n_0\
    );
\shift_out_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => \return_state[4]_i_3_n_0\,
      I1 => data_buf(1),
      I2 => \state[5]_i_12_n_0\,
      I3 => \shift_out_data[1]_i_6_n_0\,
      I4 => \shift_out_data[1]_i_7_n_0\,
      I5 => \addr_buf_reg_n_0_[1]\,
      O => \shift_out_data[1]_i_4_n_0\
    );
\shift_out_data[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03530F53"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      O => \shift_out_data[1]_i_5_n_0\
    );
\shift_out_data[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"040F"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      O => \shift_out_data[1]_i_6_n_0\
    );
\shift_out_data[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      O => \shift_out_data[1]_i_7_n_0\
    );
\shift_out_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEFFAEFFAE"
    )
        port map (
      I0 => \shift_out_data[2]_i_2_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state[3]_i_4_n_0\,
      I3 => \shift_out_data[2]_i_3_n_0\,
      I4 => \shift_out_data[2]_i_4_n_0\,
      I5 => data_buf(2),
      O => \shift_out_data[2]_i_1_n_0\
    );
\shift_out_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF101410141014"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \addr_buf_reg_n_0_[2]\,
      I5 => \shift_out_data[2]_i_5_n_0\,
      O => \shift_out_data[2]_i_2_n_0\
    );
\shift_out_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000088C0"
    )
        port map (
      I0 => p_1_in(2),
      I1 => \shift_out_data[2]_i_6_n_0\,
      I2 => p_2_in(2),
      I3 => byte_counter(0),
      I4 => byte_counter(1),
      I5 => byte_counter(2),
      O => \shift_out_data[2]_i_3_n_0\
    );
\shift_out_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001000100"
    )
        port map (
      I0 => \read_data[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => byte_counter(2),
      I4 => byte_counter(0),
      I5 => byte_counter(1),
      O => \shift_out_data[2]_i_4_n_0\
    );
\shift_out_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020FFF00020"
    )
        port map (
      I0 => \shift_out_data[7]_i_5_n_0\,
      I1 => byte_counter(0),
      I2 => byte_counter(1),
      I3 => byte_counter(2),
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[1]\,
      O => \shift_out_data[2]_i_5_n_0\
    );
\shift_out_data[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26662626"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      O => \shift_out_data[2]_i_6_n_0\
    );
\shift_out_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \shift_out_data[3]_i_2_n_0\,
      I1 => \shift_out_data[7]_i_2_n_0\,
      I2 => \addr_buf_reg_n_0_[3]\,
      I3 => data_buf(3),
      I4 => \shift_out_data[3]_i_3_n_0\,
      I5 => \return_state[4]_i_3_n_0\,
      O => \shift_out_data[3]_i_1_n_0\
    );
\shift_out_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFAAAEAEA"
    )
        port map (
      I0 => \shift_out_data[3]_i_4_n_0\,
      I1 => p_2_in(3),
      I2 => \shift_out_data[4]_i_4_n_0\,
      I3 => p_1_in(3),
      I4 => byte_counter(0),
      I5 => \shift_out_data[4]_i_3_n_0\,
      O => \shift_out_data[3]_i_2_n_0\
    );
\shift_out_data[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \shift_out_data[3]_i_3_n_0\
    );
\shift_out_data[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      O => \shift_out_data[3]_i_4_n_0\
    );
\shift_out_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBAAAAAABAAAAAA"
    )
        port map (
      I0 => \shift_out_data[4]_i_2_n_0\,
      I1 => \shift_out_data[4]_i_3_n_0\,
      I2 => byte_counter(0),
      I3 => p_2_in(4),
      I4 => \shift_out_data[4]_i_4_n_0\,
      I5 => p_1_in(4),
      O => \shift_out_data[4]_i_1_n_0\
    );
\shift_out_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \shift_out_data[5]_i_3_n_0\,
      I1 => \state[5]_i_9_n_0\,
      I2 => \shift_out_data[2]_i_4_n_0\,
      I3 => data_buf(4),
      I4 => \addr_buf_reg_n_0_[4]\,
      I5 => \shift_out_data[7]_i_2_n_0\,
      O => \shift_out_data[4]_i_2_n_0\
    );
\shift_out_data[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(2),
      O => \shift_out_data[4]_i_3_n_0\
    );
\shift_out_data[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04442626"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      O => \shift_out_data[4]_i_4_n_0\
    );
\shift_out_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAAA"
    )
        port map (
      I0 => \shift_out_data[5]_i_2_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \shift_out_data[5]_i_3_n_0\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \shift_out_data[5]_i_4_n_0\,
      I5 => \shift_out_data[5]_i_5_n_0\,
      O => \shift_out_data[5]_i_1_n_0\
    );
\shift_out_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000F888F000F"
    )
        port map (
      I0 => \addr_buf_reg_n_0_[5]\,
      I1 => \shift_out_data[4]_i_3_n_0\,
      I2 => \shift_out_data[5]_i_6_n_0\,
      I3 => \state[5]_i_9_n_0\,
      I4 => \shift_out_data[6]_i_6_n_0\,
      I5 => \shift_out_data[5]_i_7_n_0\,
      O => \shift_out_data[5]_i_2_n_0\
    );
\shift_out_data[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[4]\,
      O => \shift_out_data[5]_i_3_n_0\
    );
\shift_out_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000AFC00000A0C"
    )
        port map (
      I0 => \addr_buf_reg_n_0_[5]\,
      I1 => p_2_in(5),
      I2 => byte_counter(0),
      I3 => byte_counter(1),
      I4 => byte_counter(2),
      I5 => p_1_in(5),
      O => \shift_out_data[5]_i_4_n_0\
    );
\shift_out_data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100010001000"
    )
        port map (
      I0 => \read_data[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \shift_out_data[5]_i_4_n_0\,
      I4 => \return_state[4]_i_3_n_0\,
      I5 => data_buf(5),
      O => \shift_out_data[5]_i_5_n_0\
    );
\shift_out_data[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[4]\,
      O => \shift_out_data[5]_i_6_n_0\
    );
\shift_out_data[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02030200"
    )
        port map (
      I0 => p_1_in(5),
      I1 => byte_counter(2),
      I2 => byte_counter(1),
      I3 => byte_counter(0),
      I4 => p_2_in(5),
      O => \shift_out_data[5]_i_7_n_0\
    );
\shift_out_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF0FFF0"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \jedec_id[15]_i_3_n_0\,
      I2 => \shift_out_data[6]_i_2_n_0\,
      I3 => \shift_out_data[6]_i_3_n_0\,
      I4 => \shift_out_data[6]_i_4_n_0\,
      I5 => \shift_out_data[6]_i_5_n_0\,
      O => \shift_out_data[6]_i_1_n_0\
    );
\shift_out_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAE0000000000"
    )
        port map (
      I0 => \shift_out_data[6]_i_6_n_0\,
      I1 => \shift_out_data[6]_i_4_n_0\,
      I2 => byte_counter(0),
      I3 => byte_counter(1),
      I4 => byte_counter(2),
      I5 => \addr_buf_reg_n_0_[6]\,
      O => \shift_out_data[6]_i_2_n_0\
    );
\shift_out_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => byte_counter(2),
      I3 => data_buf(6),
      I4 => \state_reg_n_0_[3]\,
      I5 => \shift_out_data[3]_i_3_n_0\,
      O => \shift_out_data[6]_i_3_n_0\
    );
\shift_out_data[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12001000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \shift_out_data[6]_i_4_n_0\
    );
\shift_out_data[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02030200"
    )
        port map (
      I0 => p_1_in(6),
      I1 => byte_counter(2),
      I2 => byte_counter(1),
      I3 => byte_counter(0),
      I4 => p_2_in(6),
      O => \shift_out_data[6]_i_5_n_0\
    );
\shift_out_data[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[4]\,
      O => \shift_out_data[6]_i_6_n_0\
    );
\shift_out_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F8FF"
    )
        port map (
      I0 => \shift_out_data[7]_i_2_n_0\,
      I1 => \addr_buf_reg_n_0_[7]\,
      I2 => \shift_out_data[7]_i_3_n_0\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state[5]_i_9_n_0\,
      I5 => \shift_out_data[7]_i_4_n_0\,
      O => \shift_out_data[7]_i_1_n_0\
    );
\shift_out_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0002000200020"
    )
        port map (
      I0 => \shift_out_data[7]_i_5_n_0\,
      I1 => byte_counter(0),
      I2 => byte_counter(1),
      I3 => byte_counter(2),
      I4 => \jedec_id[15]_i_3_n_0\,
      I5 => \state_reg_n_0_[4]\,
      O => \shift_out_data[7]_i_2_n_0\
    );
\shift_out_data[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      I3 => p_1_in(7),
      I4 => \shift_out_data[4]_i_4_n_0\,
      O => \shift_out_data[7]_i_3_n_0\
    );
\shift_out_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => \shift_out_data[4]_i_4_n_0\,
      I1 => p_2_in(7),
      I2 => \byte_counter[1]_i_3_n_0\,
      I3 => \shift_out_data[3]_i_3_n_0\,
      I4 => \return_state[4]_i_3_n_0\,
      I5 => data_buf(7),
      O => \shift_out_data[7]_i_4_n_0\
    );
\shift_out_data[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F00"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[4]\,
      O => \shift_out_data[7]_i_5_n_0\
    );
\shift_out_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[0]_i_1_n_0\,
      Q => shift_out_data(0)
    );
\shift_out_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[1]_i_1_n_0\,
      Q => shift_out_data(1)
    );
\shift_out_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[2]_i_1_n_0\,
      Q => shift_out_data(2)
    );
\shift_out_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[3]_i_1_n_0\,
      Q => shift_out_data(3)
    );
\shift_out_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[4]_i_1_n_0\,
      Q => shift_out_data(4)
    );
\shift_out_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[5]_i_1_n_0\,
      Q => shift_out_data(5)
    );
\shift_out_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[6]_i_1_n_0\,
      Q => shift_out_data(6)
    );
\shift_out_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => load_shift_out_i_1_n_0,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out_data[7]_i_1_n_0\,
      Q => shift_out_data(7)
    );
\shift_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[0]_i_1_n_0\,
      Q => \^shift_out\(0)
    );
\shift_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[1]_i_1_n_0\,
      Q => \^shift_out\(1)
    );
\shift_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[2]_i_1_n_0\,
      Q => \^shift_out\(2)
    );
\shift_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[3]_i_1_n_0\,
      Q => \^shift_out\(3)
    );
\shift_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[4]_i_1_n_0\,
      Q => \^shift_out\(4)
    );
\shift_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[5]_i_1_n_0\,
      Q => \^shift_out\(5)
    );
\shift_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[6]_i_1_n_0\,
      Q => \^shift_out\(6)
    );
\shift_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_out[7]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \shift_out[7]_i_2_n_0\,
      Q => \^shift_out\(7)
    );
spi_cs_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => spi_cs_n_i_2_n_0,
      I1 => spi_cs_n_i_3_n_0,
      I2 => \^spi_cs_n\,
      O => spi_cs_n_i_1_n_0
    );
spi_cs_n_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEC"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => byte_counter(2),
      I2 => byte_counter(0),
      I3 => byte_counter(1),
      O => spi_cs_n_i_10_n_0
    );
spi_cs_n_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      O => spi_cs_n_i_11_n_0
    );
spi_cs_n_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(21),
      I1 => wait_counter(20),
      I2 => wait_counter(23),
      I3 => wait_counter(22),
      O => spi_cs_n_i_12_n_0
    );
spi_cs_n_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(17),
      I1 => wait_counter(16),
      I2 => wait_counter(19),
      I3 => wait_counter(18),
      O => spi_cs_n_i_13_n_0
    );
spi_cs_n_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(29),
      I1 => wait_counter(28),
      I2 => wait_counter(31),
      I3 => wait_counter(30),
      O => spi_cs_n_i_14_n_0
    );
spi_cs_n_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(25),
      I1 => wait_counter(24),
      I2 => wait_counter(27),
      I3 => wait_counter(26),
      O => spi_cs_n_i_15_n_0
    );
spi_cs_n_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(5),
      I1 => wait_counter(4),
      I2 => wait_counter(7),
      I3 => wait_counter(6),
      O => spi_cs_n_i_16_n_0
    );
spi_cs_n_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter(13),
      I1 => wait_counter(12),
      I2 => wait_counter(15),
      I3 => wait_counter(14),
      O => spi_cs_n_i_17_n_0
    );
spi_cs_n_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => spi_cs_n_i_18_n_0
    );
spi_cs_n_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0040FFFF0040"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[3]\,
      O => spi_cs_n_i_19_n_0
    );
spi_cs_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EF0FE0F0EF0FF0F"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => byte_counter(2),
      O => spi_cs_n_i_2_n_0
    );
spi_cs_n_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[4]\,
      O => spi_cs_n_i_20_n_0
    );
spi_cs_n_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000041"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[4]\,
      O => spi_cs_n_i_21_n_0
    );
spi_cs_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAE"
    )
        port map (
      I0 => spi_cs_n_i_4_n_0,
      I1 => spi_cs_n_i_5_n_0,
      I2 => spi_cs_n_i_6_n_0,
      I3 => spi_cs_n_i_7_n_0,
      I4 => spi_cs_n_i_8_n_0,
      I5 => spi_cs_n_i_9_n_0,
      O => spi_cs_n_i_3_n_0
    );
spi_cs_n_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A00FF0A0A0088"
    )
        port map (
      I0 => \state[4]_i_7_n_0\,
      I1 => spi_cs_n_i_10_n_0,
      I2 => \state_reg_n_0_[4]\,
      I3 => \read_data[7]_i_4_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => spi_cs_n_i_11_n_0,
      O => spi_cs_n_i_4_n_0
    );
spi_cs_n_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C300440044"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[3]\,
      O => spi_cs_n_i_5_n_0
    );
spi_cs_n_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => spi_cs_n_i_12_n_0,
      I1 => spi_cs_n_i_13_n_0,
      I2 => spi_cs_n_i_14_n_0,
      I3 => spi_cs_n_i_15_n_0,
      O => spi_cs_n_i_6_n_0
    );
spi_cs_n_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_counter(2),
      I1 => wait_counter(3),
      I2 => wait_counter(0),
      I3 => wait_counter(1),
      I4 => spi_cs_n_i_16_n_0,
      O => spi_cs_n_i_7_n_0
    );
spi_cs_n_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_counter(10),
      I1 => wait_counter(11),
      I2 => wait_counter(8),
      I3 => wait_counter(9),
      I4 => spi_cs_n_i_17_n_0,
      O => spi_cs_n_i_8_n_0
    );
spi_cs_n_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBBBAAA"
    )
        port map (
      I0 => spi_cs_n_i_18_n_0,
      I1 => \read_data[7]_i_4_n_0\,
      I2 => \state[1]_i_4_n_0\,
      I3 => spi_cs_n_i_19_n_0,
      I4 => spi_cs_n_i_20_n_0,
      I5 => spi_cs_n_i_21_n_0,
      O => spi_cs_n_i_9_n_0
    );
spi_cs_n_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => spi_cs_n_i_1_n_0,
      PRE => \read_data[7]_i_2_n_0\,
      Q => \^spi_cs_n\
    );
spi_mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \^shift_out\(7),
      I1 => load_shift_out_reg_n_0,
      I2 => sck_enable_reg_n_0,
      I3 => sck_toggle_reg_n_0,
      I4 => \^spi_sck_reg_0\,
      I5 => \^spi_mosi\,
      O => spi_mosi_i_1_n_0
    );
spi_mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => spi_mosi_i_1_n_0,
      Q => \^spi_mosi\
    );
spi_sck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => sck_toggle_reg_n_0,
      I1 => sck_enable_reg_n_0,
      I2 => \^spi_sck_reg_0\,
      O => spi_sck_i_1_n_0
    );
spi_sck_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => spi_sck_i_1_n_0,
      Q => \^spi_sck_reg_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEFE"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[0]_i_3_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => \state[0]_i_5_n_0\,
      I4 => error_i_4_n_0,
      I5 => \status_reg_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
        port map (
      I0 => \state[0]_i_6_n_0\,
      I1 => \state[0]_i_7_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \return_state_reg_n_0_[0]\,
      I4 => \state[3]_i_5_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[0]\,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FA00AA00000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \return_state_reg_n_0_[0]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state[4]_i_7_n_0\,
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888808"
    )
        port map (
      I0 => \jedec_id[15]_i_3_n_0\,
      I1 => \state[4]_i_7_n_0\,
      I2 => cmd_program,
      I3 => cmd_read_id,
      I4 => cmd_read,
      I5 => first_access,
      O => \state[0]_i_7_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAEAEAEA"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \state[1]_i_4_n_0\,
      I3 => \state[1]_i_5_n_0\,
      I4 => \state[5]_i_9_n_0\,
      I5 => \state[1]_i_6_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \bit_counter_reg_n_0_[1]\,
      O => \state[1]_i_10_n_0\
    );
\state[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[1]_i_11_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAFFFFEAAA"
    )
        port map (
      I0 => \state[1]_i_7_n_0\,
      I1 => \state[1]_i_8_n_0\,
      I2 => \state[3]_i_8_n_0\,
      I3 => \state[1]_i_9_n_0\,
      I4 => \state[4]_i_7_n_0\,
      I5 => \state[3]_i_4_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \return_state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \state[1]_i_5_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4440000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state[3]_i_12_n_0\,
      I3 => \state[1]_i_8_n_0\,
      I4 => \state[4]_i_4_n_0\,
      O => \state[1]_i_6_n_0\
    );
\state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAABAAAAA"
    )
        port map (
      I0 => \state[1]_i_10_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => cmd_read_id,
      I3 => first_access,
      I4 => spi_cs_n_i_20_n_0,
      I5 => \state[1]_i_11_n_0\,
      O => \state[1]_i_7_n_0\
    );
\state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \return_state_reg_n_0_[1]\,
      I2 => \status_reg_reg_n_0_[0]\,
      I3 => error_i_7_n_0,
      O => \state[1]_i_8_n_0\
    );
\state[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => error_i_12_n_0,
      I1 => timeout_counter(24),
      I2 => timeout_counter(18),
      I3 => timeout_counter(16),
      I4 => \state[4]_i_4_n_0\,
      O => \state[1]_i_9_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEEEA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => error_i_4_n_0,
      I3 => \return_state_reg_n_0_[2]\,
      I4 => \status_reg_reg_n_0_[0]\,
      I5 => \state[2]_i_4_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \state[2]_i_5_n_0\,
      I1 => first_access,
      I2 => cmd_read_id,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state[2]_i_6_n_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \return_state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[5]\,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FF50000F0400000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state[1]_i_4_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => cmd_program,
      I5 => cmd_read,
      O => \state[2]_i_6_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAEA"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => \state[3]_i_3_n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state[3]_i_4_n_0\,
      I4 => \state[3]_i_5_n_0\,
      I5 => \state[3]_i_6_n_0\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \return_state_reg_n_0_[1]\,
      I1 => \status_reg_reg_n_0_[0]\,
      O => \state[3]_i_10_n_0\
    );
\state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \read_data[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => error_i_7_n_0,
      O => \state[3]_i_11_n_0\
    );
\state[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5510FFFF"
    )
        port map (
      I0 => timeout_counter(24),
      I1 => timeout_counter(18),
      I2 => \state[3]_i_14_n_0\,
      I3 => \state[3]_i_15_n_0\,
      I4 => timeout_counter(25),
      O => \state[3]_i_12_n_0\
    );
\state[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      O => \state[3]_i_13_n_0\
    );
\state[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555FFFFFFFF"
    )
        port map (
      I0 => timeout_counter(16),
      I1 => timeout_counter(13),
      I2 => timeout_counter(12),
      I3 => timeout_counter(15),
      I4 => timeout_counter(14),
      I5 => timeout_counter(17),
      O => \state[3]_i_14_n_0\
    );
\state[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => timeout_counter(19),
      I1 => timeout_counter(22),
      I2 => timeout_counter(23),
      I3 => timeout_counter(21),
      I4 => timeout_counter(20),
      O => \state[3]_i_15_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F0F0F8F8F0F0"
    )
        port map (
      I0 => \state[3]_i_7_n_0\,
      I1 => \state[3]_i_8_n_0\,
      I2 => \state[3]_i_9_n_0\,
      I3 => \state[3]_i_10_n_0\,
      I4 => \state[3]_i_11_n_0\,
      I5 => \state[3]_i_12_n_0\,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[3]\,
      O => \state[3]_i_5_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00FFC00000"
    )
        port map (
      I0 => \return_state_reg_n_0_[1]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \state[3]_i_13_n_0\,
      I3 => \state[3]_i_3_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \return_state_reg_n_0_[1]\,
      I1 => \status_reg_reg_n_0_[0]\,
      I2 => timeout_counter(24),
      I3 => timeout_counter(18),
      I4 => timeout_counter(16),
      I5 => error_i_12_n_0,
      O => \state[3]_i_7_n_0\
    );
\state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => error_i_13_n_0,
      I1 => timeout_counter(0),
      I2 => timeout_counter(5),
      I3 => timeout_counter(6),
      I4 => timeout_counter(7),
      O => \state[3]_i_8_n_0\
    );
\state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \jedec_id[15]_i_3_n_0\,
      I1 => \state[5]_i_12_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => first_access,
      I4 => cmd_read,
      I5 => cmd_read_id,
      O => \state[3]_i_9_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFAEA"
    )
        port map (
      I0 => \state[4]_i_2_n_0\,
      I1 => \state[4]_i_3_n_0\,
      I2 => \state[4]_i_4_n_0\,
      I3 => \return_state_reg_n_0_[4]\,
      I4 => \state[4]_i_5_n_0\,
      I5 => \state[4]_i_6_n_0\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800080008000800"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[4]\,
      I1 => \state[4]_i_7_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state[1]_i_4_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \state[4]_i_8_n_0\,
      I1 => error_i_8_n_0,
      I2 => error_i_7_n_0,
      I3 => error_i_6_n_0,
      I4 => error_i_5_n_0,
      I5 => \status_reg_reg_n_0_[0]\,
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[4]\,
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAEAAA"
    )
        port map (
      I0 => \state[4]_i_4_n_0\,
      I1 => \state[3]_i_5_n_0\,
      I2 => \return_state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[4]_i_5_n_0\
    );
\state[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \state[4]_i_6_n_0\
    );
\state[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      O => \state[4]_i_7_n_0\
    );
\state[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => error_i_11_n_0,
      I1 => error_i_10_n_0,
      I2 => timeout_counter(17),
      I3 => timeout_counter(7),
      O => \state[4]_i_8_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => \state[5]_i_3_n_0\,
      I1 => \state[5]_i_4_n_0\,
      I2 => \state[5]_i_5_n_0\,
      I3 => \state[5]_i_6_n_0\,
      I4 => \state[5]_i_7_n_0\,
      I5 => \state[5]_i_8_n_0\,
      O => \state[5]_i_1_n_0\
    );
\state[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F08000C000C00"
    )
        port map (
      I0 => byte_counter(2),
      I1 => \state_reg_n_0_[1]\,
      I2 => \read_data[7]_i_4_n_0\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[5]_i_10_n_0\
    );
\state[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A04F44F0F0"
    )
        port map (
      I0 => \state[5]_i_19_n_0\,
      I1 => \state[5]_i_20_n_0\,
      I2 => \state_reg_n_0_[3]\,
      I3 => byte_counter(2),
      I4 => \state_reg_n_0_[1]\,
      I5 => \read_data[7]_i_4_n_0\,
      O => \state[5]_i_11_n_0\
    );
\state[5]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      O => \state[5]_i_12_n_0\
    );
\state[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_read_id,
      I1 => cmd_read,
      I2 => cmd_erase_sector,
      I3 => cmd_program,
      O => \state[5]_i_13_n_0\
    );
\state[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010100010"
    )
        port map (
      I0 => \state[5]_i_9_n_0\,
      I1 => \read_data[7]_i_4_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => byte_counter(1),
      I5 => byte_counter(0),
      O => \state[5]_i_14_n_0\
    );
\state[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000002020202"
    )
        port map (
      I0 => \state[5]_i_21_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \read_data[7]_i_4_n_0\,
      I3 => \shift_out_data[5]_i_6_n_0\,
      I4 => \state[5]_i_22_n_0\,
      I5 => \state[5]_i_13_n_0\,
      O => \state[5]_i_15_n_0\
    );
\state[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \return_state[4]_i_3_n_0\,
      I1 => \state[5]_i_13_n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \read_data[7]_i_4_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[5]_i_16_n_0\
    );
\state[5]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_counter(26),
      I1 => wait_counter(27),
      I2 => wait_counter(24),
      I3 => wait_counter(25),
      I4 => spi_cs_n_i_14_n_0,
      O => \state[5]_i_17_n_0\
    );
\state[5]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_counter(18),
      I1 => wait_counter(19),
      I2 => wait_counter(16),
      I3 => wait_counter(17),
      I4 => spi_cs_n_i_12_n_0,
      O => \state[5]_i_18_n_0\
    );
\state[5]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      O => \state[5]_i_19_n_0\
    );
\state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \bit_counter_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state[5]_i_9_n_0\,
      O => \state[5]_i_2_n_0\
    );
\state[5]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_counter(0),
      I1 => byte_counter(1),
      O => \state[5]_i_20_n_0\
    );
\state[5]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCE000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => byte_counter(1),
      I3 => byte_counter(0),
      I4 => byte_counter(2),
      O => \state[5]_i_21_n_0\
    );
\state[5]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => byte_counter(2),
      I1 => byte_counter(1),
      I2 => byte_counter(0),
      O => \state[5]_i_22_n_0\
    );
\state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAABAA"
    )
        port map (
      I0 => \state[5]_i_10_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state[5]_i_11_n_0\,
      O => \state[5]_i_3_n_0\
    );
\state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4440"
    )
        port map (
      I0 => \state[5]_i_12_n_0\,
      I1 => \jedec_id[15]_i_3_n_0\,
      I2 => first_access,
      I3 => \state[5]_i_13_n_0\,
      I4 => \state[5]_i_14_n_0\,
      I5 => \state[5]_i_15_n_0\,
      O => \state[5]_i_4_n_0\
    );
\state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAAAEA"
    )
        port map (
      I0 => \state[5]_i_16_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state[5]_i_13_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[5]\,
      O => \state[5]_i_5_n_0\
    );
\state[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"86"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      O => \state[5]_i_6_n_0\
    );
\state[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => spi_cs_n_i_8_n_0,
      I1 => spi_cs_n_i_7_n_0,
      I2 => \state[5]_i_17_n_0\,
      I3 => \state[5]_i_18_n_0\,
      O => \state[5]_i_7_n_0\
    );
\state[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[3]\,
      O => \state[5]_i_8_n_0\
    );
\state[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => \state[5]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \state[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \state[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \state[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \state[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \state[3]_i_1_n_0\,
      Q => \state_reg_n_0_[3]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \state[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \state[4]_i_1_n_0\,
      Q => \state_reg_n_0_[4]\
    );
\state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \state[5]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \state[5]_i_2_n_0\,
      Q => \state_reg_n_0_[5]\
    );
\status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => shift_in(0),
      I1 => \byte_counter[1]_i_3_n_0\,
      I2 => \bit_counter[5]_i_3_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state[4]_i_4_n_0\,
      I5 => \status_reg_reg_n_0_[0]\,
      O => \status_reg[0]_i_1_n_0\
    );
\status_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \read_data[7]_i_2_n_0\,
      D => \status_reg[0]_i_1_n_0\,
      Q => \status_reg_reg_n_0_[0]\
    );
timeout_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timeout_counter0_carry_n_0,
      CO(2) => timeout_counter0_carry_n_1,
      CO(1) => timeout_counter0_carry_n_2,
      CO(0) => timeout_counter0_carry_n_3,
      CYINIT => timeout_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(4 downto 1),
      S(3 downto 0) => timeout_counter(4 downto 1)
    );
\timeout_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timeout_counter0_carry_n_0,
      CO(3) => \timeout_counter0_carry__0_n_0\,
      CO(2) => \timeout_counter0_carry__0_n_1\,
      CO(1) => \timeout_counter0_carry__0_n_2\,
      CO(0) => \timeout_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(8 downto 5),
      S(3 downto 0) => timeout_counter(8 downto 5)
    );
\timeout_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_counter0_carry__0_n_0\,
      CO(3) => \timeout_counter0_carry__1_n_0\,
      CO(2) => \timeout_counter0_carry__1_n_1\,
      CO(1) => \timeout_counter0_carry__1_n_2\,
      CO(0) => \timeout_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(12 downto 9),
      S(3 downto 0) => timeout_counter(12 downto 9)
    );
\timeout_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_counter0_carry__1_n_0\,
      CO(3) => \timeout_counter0_carry__2_n_0\,
      CO(2) => \timeout_counter0_carry__2_n_1\,
      CO(1) => \timeout_counter0_carry__2_n_2\,
      CO(0) => \timeout_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(16 downto 13),
      S(3 downto 0) => timeout_counter(16 downto 13)
    );
\timeout_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_counter0_carry__2_n_0\,
      CO(3) => \timeout_counter0_carry__3_n_0\,
      CO(2) => \timeout_counter0_carry__3_n_1\,
      CO(1) => \timeout_counter0_carry__3_n_2\,
      CO(0) => \timeout_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(20 downto 17),
      S(3 downto 0) => timeout_counter(20 downto 17)
    );
\timeout_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_counter0_carry__3_n_0\,
      CO(3) => \timeout_counter0_carry__4_n_0\,
      CO(2) => \timeout_counter0_carry__4_n_1\,
      CO(1) => \timeout_counter0_carry__4_n_2\,
      CO(0) => \timeout_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(24 downto 21),
      S(3 downto 0) => timeout_counter(24 downto 21)
    );
\timeout_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_counter0_carry__4_n_0\,
      CO(3) => \timeout_counter0_carry__5_n_0\,
      CO(2) => \timeout_counter0_carry__5_n_1\,
      CO(1) => \timeout_counter0_carry__5_n_2\,
      CO(0) => \timeout_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timeout_counter0(28 downto 25),
      S(3 downto 0) => timeout_counter(28 downto 25)
    );
\timeout_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_timeout_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \timeout_counter0_carry__6_n_2\,
      CO(0) => \timeout_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_timeout_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => timeout_counter0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => timeout_counter(31 downto 29)
    );
\timeout_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter(0),
      O => \timeout_counter[0]_i_1_n_0\
    );
\timeout_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(10),
      O => \timeout_counter[10]_i_1_n_0\
    );
\timeout_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(11),
      O => \timeout_counter[11]_i_1_n_0\
    );
\timeout_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(12),
      O => \timeout_counter[12]_i_1_n_0\
    );
\timeout_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(13),
      O => \timeout_counter[13]_i_1_n_0\
    );
\timeout_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(14),
      O => \timeout_counter[14]_i_1_n_0\
    );
\timeout_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(15),
      O => \timeout_counter[15]_i_1_n_0\
    );
\timeout_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(16),
      O => \timeout_counter[16]_i_1_n_0\
    );
\timeout_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(17),
      O => \timeout_counter[17]_i_1_n_0\
    );
\timeout_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(18),
      O => \timeout_counter[18]_i_1_n_0\
    );
\timeout_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(19),
      O => \timeout_counter[19]_i_1_n_0\
    );
\timeout_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(1),
      O => \timeout_counter[1]_i_1_n_0\
    );
\timeout_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(20),
      O => \timeout_counter[20]_i_1_n_0\
    );
\timeout_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(21),
      O => \timeout_counter[21]_i_1_n_0\
    );
\timeout_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(22),
      O => \timeout_counter[22]_i_1_n_0\
    );
\timeout_counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(23),
      O => \timeout_counter[23]_i_1_n_0\
    );
\timeout_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(24),
      O => \timeout_counter[24]_i_1_n_0\
    );
\timeout_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(25),
      O => \timeout_counter[25]_i_1_n_0\
    );
\timeout_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(26),
      O => \timeout_counter[26]_i_1_n_0\
    );
\timeout_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(27),
      O => \timeout_counter[27]_i_1_n_0\
    );
\timeout_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(28),
      O => \timeout_counter[28]_i_1_n_0\
    );
\timeout_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(29),
      O => \timeout_counter[29]_i_1_n_0\
    );
\timeout_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(2),
      O => \timeout_counter[2]_i_1_n_0\
    );
\timeout_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(30),
      O => \timeout_counter[30]_i_1_n_0\
    );
\timeout_counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000001"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[4]\,
      O => \timeout_counter[31]_i_1_n_0\
    );
\timeout_counter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(31),
      O => \timeout_counter[31]_i_2_n_0\
    );
\timeout_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(3),
      O => \timeout_counter[3]_i_1_n_0\
    );
\timeout_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(4),
      O => \timeout_counter[4]_i_1_n_0\
    );
\timeout_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(5),
      O => \timeout_counter[5]_i_1_n_0\
    );
\timeout_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(6),
      O => \timeout_counter[6]_i_1_n_0\
    );
\timeout_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(7),
      O => \timeout_counter[7]_i_1_n_0\
    );
\timeout_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(8),
      O => \timeout_counter[8]_i_1_n_0\
    );
\timeout_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => timeout_counter0(9),
      O => \timeout_counter[9]_i_1_n_0\
    );
\timeout_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[0]_i_1_n_0\,
      Q => timeout_counter(0)
    );
\timeout_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[10]_i_1_n_0\,
      Q => timeout_counter(10)
    );
\timeout_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[11]_i_1_n_0\,
      Q => timeout_counter(11)
    );
\timeout_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[12]_i_1_n_0\,
      Q => timeout_counter(12)
    );
\timeout_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[13]_i_1_n_0\,
      Q => timeout_counter(13)
    );
\timeout_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[14]_i_1_n_0\,
      Q => timeout_counter(14)
    );
\timeout_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[15]_i_1_n_0\,
      Q => timeout_counter(15)
    );
\timeout_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[16]_i_1_n_0\,
      Q => timeout_counter(16)
    );
\timeout_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[17]_i_1_n_0\,
      Q => timeout_counter(17)
    );
\timeout_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[18]_i_1_n_0\,
      Q => timeout_counter(18)
    );
\timeout_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[19]_i_1_n_0\,
      Q => timeout_counter(19)
    );
\timeout_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[1]_i_1_n_0\,
      Q => timeout_counter(1)
    );
\timeout_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[20]_i_1_n_0\,
      Q => timeout_counter(20)
    );
\timeout_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[21]_i_1_n_0\,
      Q => timeout_counter(21)
    );
\timeout_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[22]_i_1_n_0\,
      Q => timeout_counter(22)
    );
\timeout_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[23]_i_1_n_0\,
      Q => timeout_counter(23)
    );
\timeout_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[24]_i_1_n_0\,
      Q => timeout_counter(24)
    );
\timeout_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[25]_i_1_n_0\,
      Q => timeout_counter(25)
    );
\timeout_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[26]_i_1_n_0\,
      Q => timeout_counter(26)
    );
\timeout_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[27]_i_1_n_0\,
      Q => timeout_counter(27)
    );
\timeout_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[28]_i_1_n_0\,
      Q => timeout_counter(28)
    );
\timeout_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[29]_i_1_n_0\,
      Q => timeout_counter(29)
    );
\timeout_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[2]_i_1_n_0\,
      Q => timeout_counter(2)
    );
\timeout_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[30]_i_1_n_0\,
      Q => timeout_counter(30)
    );
\timeout_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[31]_i_2_n_0\,
      Q => timeout_counter(31)
    );
\timeout_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[3]_i_1_n_0\,
      Q => timeout_counter(3)
    );
\timeout_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[4]_i_1_n_0\,
      Q => timeout_counter(4)
    );
\timeout_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[5]_i_1_n_0\,
      Q => timeout_counter(5)
    );
\timeout_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[6]_i_1_n_0\,
      Q => timeout_counter(6)
    );
\timeout_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[7]_i_1_n_0\,
      Q => timeout_counter(7)
    );
\timeout_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[8]_i_1_n_0\,
      Q => timeout_counter(8)
    );
\timeout_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \timeout_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \timeout_counter[9]_i_1_n_0\,
      Q => timeout_counter(9)
    );
wait_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wait_counter0_carry_n_0,
      CO(2) => wait_counter0_carry_n_1,
      CO(1) => wait_counter0_carry_n_2,
      CO(0) => wait_counter0_carry_n_3,
      CYINIT => wait_counter(0),
      DI(3 downto 0) => wait_counter(4 downto 1),
      O(3 downto 0) => wait_counter0(4 downto 1),
      S(3) => wait_counter0_carry_i_1_n_0,
      S(2) => wait_counter0_carry_i_2_n_0,
      S(1) => wait_counter0_carry_i_3_n_0,
      S(0) => wait_counter0_carry_i_4_n_0
    );
\wait_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wait_counter0_carry_n_0,
      CO(3) => \wait_counter0_carry__0_n_0\,
      CO(2) => \wait_counter0_carry__0_n_1\,
      CO(1) => \wait_counter0_carry__0_n_2\,
      CO(0) => \wait_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wait_counter(8 downto 5),
      O(3 downto 0) => wait_counter0(8 downto 5),
      S(3) => \wait_counter0_carry__0_i_1_n_0\,
      S(2) => \wait_counter0_carry__0_i_2_n_0\,
      S(1) => \wait_counter0_carry__0_i_3_n_0\,
      S(0) => \wait_counter0_carry__0_i_4_n_0\
    );
\wait_counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(8),
      O => \wait_counter0_carry__0_i_1_n_0\
    );
\wait_counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(7),
      O => \wait_counter0_carry__0_i_2_n_0\
    );
\wait_counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(6),
      O => \wait_counter0_carry__0_i_3_n_0\
    );
\wait_counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(5),
      O => \wait_counter0_carry__0_i_4_n_0\
    );
\wait_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_carry__0_n_0\,
      CO(3) => \wait_counter0_carry__1_n_0\,
      CO(2) => \wait_counter0_carry__1_n_1\,
      CO(1) => \wait_counter0_carry__1_n_2\,
      CO(0) => \wait_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wait_counter(12 downto 9),
      O(3 downto 0) => wait_counter0(12 downto 9),
      S(3) => \wait_counter0_carry__1_i_1_n_0\,
      S(2) => \wait_counter0_carry__1_i_2_n_0\,
      S(1) => \wait_counter0_carry__1_i_3_n_0\,
      S(0) => \wait_counter0_carry__1_i_4_n_0\
    );
\wait_counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(12),
      O => \wait_counter0_carry__1_i_1_n_0\
    );
\wait_counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(11),
      O => \wait_counter0_carry__1_i_2_n_0\
    );
\wait_counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(10),
      O => \wait_counter0_carry__1_i_3_n_0\
    );
\wait_counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(9),
      O => \wait_counter0_carry__1_i_4_n_0\
    );
\wait_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_carry__1_n_0\,
      CO(3) => \wait_counter0_carry__2_n_0\,
      CO(2) => \wait_counter0_carry__2_n_1\,
      CO(1) => \wait_counter0_carry__2_n_2\,
      CO(0) => \wait_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wait_counter(16 downto 13),
      O(3 downto 0) => wait_counter0(16 downto 13),
      S(3) => \wait_counter0_carry__2_i_1_n_0\,
      S(2) => \wait_counter0_carry__2_i_2_n_0\,
      S(1) => \wait_counter0_carry__2_i_3_n_0\,
      S(0) => \wait_counter0_carry__2_i_4_n_0\
    );
\wait_counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(16),
      O => \wait_counter0_carry__2_i_1_n_0\
    );
\wait_counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(15),
      O => \wait_counter0_carry__2_i_2_n_0\
    );
\wait_counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(14),
      O => \wait_counter0_carry__2_i_3_n_0\
    );
\wait_counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(13),
      O => \wait_counter0_carry__2_i_4_n_0\
    );
\wait_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_carry__2_n_0\,
      CO(3) => \wait_counter0_carry__3_n_0\,
      CO(2) => \wait_counter0_carry__3_n_1\,
      CO(1) => \wait_counter0_carry__3_n_2\,
      CO(0) => \wait_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wait_counter(20 downto 17),
      O(3 downto 0) => wait_counter0(20 downto 17),
      S(3) => \wait_counter0_carry__3_i_1_n_0\,
      S(2) => \wait_counter0_carry__3_i_2_n_0\,
      S(1) => \wait_counter0_carry__3_i_3_n_0\,
      S(0) => \wait_counter0_carry__3_i_4_n_0\
    );
\wait_counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(20),
      O => \wait_counter0_carry__3_i_1_n_0\
    );
\wait_counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(19),
      O => \wait_counter0_carry__3_i_2_n_0\
    );
\wait_counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(18),
      O => \wait_counter0_carry__3_i_3_n_0\
    );
\wait_counter0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(17),
      O => \wait_counter0_carry__3_i_4_n_0\
    );
\wait_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_carry__3_n_0\,
      CO(3) => \wait_counter0_carry__4_n_0\,
      CO(2) => \wait_counter0_carry__4_n_1\,
      CO(1) => \wait_counter0_carry__4_n_2\,
      CO(0) => \wait_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wait_counter(24 downto 21),
      O(3 downto 0) => wait_counter0(24 downto 21),
      S(3) => \wait_counter0_carry__4_i_1_n_0\,
      S(2) => \wait_counter0_carry__4_i_2_n_0\,
      S(1) => \wait_counter0_carry__4_i_3_n_0\,
      S(0) => \wait_counter0_carry__4_i_4_n_0\
    );
\wait_counter0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(24),
      O => \wait_counter0_carry__4_i_1_n_0\
    );
\wait_counter0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(23),
      O => \wait_counter0_carry__4_i_2_n_0\
    );
\wait_counter0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(22),
      O => \wait_counter0_carry__4_i_3_n_0\
    );
\wait_counter0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(21),
      O => \wait_counter0_carry__4_i_4_n_0\
    );
\wait_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_carry__4_n_0\,
      CO(3) => \wait_counter0_carry__5_n_0\,
      CO(2) => \wait_counter0_carry__5_n_1\,
      CO(1) => \wait_counter0_carry__5_n_2\,
      CO(0) => \wait_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wait_counter(28 downto 25),
      O(3 downto 0) => wait_counter0(28 downto 25),
      S(3) => \wait_counter0_carry__5_i_1_n_0\,
      S(2) => \wait_counter0_carry__5_i_2_n_0\,
      S(1) => \wait_counter0_carry__5_i_3_n_0\,
      S(0) => \wait_counter0_carry__5_i_4_n_0\
    );
\wait_counter0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(28),
      O => \wait_counter0_carry__5_i_1_n_0\
    );
\wait_counter0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(27),
      O => \wait_counter0_carry__5_i_2_n_0\
    );
\wait_counter0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(26),
      O => \wait_counter0_carry__5_i_3_n_0\
    );
\wait_counter0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(25),
      O => \wait_counter0_carry__5_i_4_n_0\
    );
\wait_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_wait_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wait_counter0_carry__6_n_2\,
      CO(0) => \wait_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => wait_counter(30 downto 29),
      O(3) => \NLW_wait_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => wait_counter0(31 downto 29),
      S(3) => '0',
      S(2) => \wait_counter0_carry__6_i_1_n_0\,
      S(1) => \wait_counter0_carry__6_i_2_n_0\,
      S(0) => \wait_counter0_carry__6_i_3_n_0\
    );
\wait_counter0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(31),
      O => \wait_counter0_carry__6_i_1_n_0\
    );
\wait_counter0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(30),
      O => \wait_counter0_carry__6_i_2_n_0\
    );
\wait_counter0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(29),
      O => \wait_counter0_carry__6_i_3_n_0\
    );
wait_counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(4),
      O => wait_counter0_carry_i_1_n_0
    );
wait_counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(3),
      O => wait_counter0_carry_i_2_n_0
    );
wait_counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(2),
      O => wait_counter0_carry_i_3_n_0
    );
wait_counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter(1),
      O => wait_counter0_carry_i_4_n_0
    );
\wait_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000084A4"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter(0),
      O => \wait_counter[0]_i_1_n_0\
    );
\wait_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(10),
      O => \wait_counter[10]_i_1_n_0\
    );
\wait_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(11),
      O => \wait_counter[11]_i_1_n_0\
    );
\wait_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0A280F3"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => wait_counter0(12),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      O => \wait_counter[12]_i_1_n_0\
    );
\wait_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(13),
      O => \wait_counter[13]_i_1_n_0\
    );
\wait_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(14),
      O => \wait_counter[14]_i_1_n_0\
    );
\wait_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(15),
      O => \wait_counter[15]_i_1_n_0\
    );
\wait_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(16),
      O => \wait_counter[16]_i_1_n_0\
    );
\wait_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(17),
      O => \wait_counter[17]_i_1_n_0\
    );
\wait_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(18),
      O => \wait_counter[18]_i_1_n_0\
    );
\wait_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(19),
      O => \wait_counter[19]_i_1_n_0\
    );
\wait_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(1),
      O => \wait_counter[1]_i_1_n_0\
    );
\wait_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(20),
      O => \wait_counter[20]_i_1_n_0\
    );
\wait_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(21),
      O => \wait_counter[21]_i_1_n_0\
    );
\wait_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(22),
      O => \wait_counter[22]_i_1_n_0\
    );
\wait_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(23),
      O => \wait_counter[23]_i_1_n_0\
    );
\wait_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(24),
      O => \wait_counter[24]_i_1_n_0\
    );
\wait_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(25),
      O => \wait_counter[25]_i_1_n_0\
    );
\wait_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(26),
      O => \wait_counter[26]_i_1_n_0\
    );
\wait_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(27),
      O => \wait_counter[27]_i_1_n_0\
    );
\wait_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(28),
      O => \wait_counter[28]_i_1_n_0\
    );
\wait_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(29),
      O => \wait_counter[29]_i_1_n_0\
    );
\wait_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB2BAB2BB020B030"
    )
        port map (
      I0 => wait_counter0(2),
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[0]\,
      O => \wait_counter[2]_i_1_n_0\
    );
\wait_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(30),
      O => \wait_counter[30]_i_1_n_0\
    );
\wait_counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \state[5]_i_7_n_0\,
      I1 => \wait_counter[31]_i_3_n_0\,
      I2 => \wait_counter[31]_i_4_n_0\,
      I3 => \wait_counter[31]_i_5_n_0\,
      I4 => \wait_counter[31]_i_6_n_0\,
      I5 => \wait_counter[31]_i_7_n_0\,
      O => \wait_counter[31]_i_1_n_0\
    );
\wait_counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(31),
      O => \wait_counter[31]_i_2_n_0\
    );
\wait_counter[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008001000000008"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[0]\,
      O => \wait_counter[31]_i_3_n_0\
    );
\wait_counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \return_state[4]_i_3_n_0\,
      I1 => \jedec_id[23]_i_3_n_0\,
      I2 => \state[4]_i_4_n_0\,
      I3 => \state[3]_i_11_n_0\,
      I4 => \wait_counter[31]_i_8_n_0\,
      I5 => \state[3]_i_8_n_0\,
      O => \wait_counter[31]_i_4_n_0\
    );
\wait_counter[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \read_data[7]_i_4_n_0\,
      O => \wait_counter[31]_i_5_n_0\
    );
\wait_counter[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \state[3]_i_4_n_0\,
      I1 => \read_data[7]_i_4_n_0\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[5]\,
      O => \wait_counter[31]_i_6_n_0\
    );
\wait_counter[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \bit_counter[5]_i_3_n_0\,
      I1 => \state[4]_i_7_n_0\,
      I2 => \shift_out_data[5]_i_3_n_0\,
      I3 => \state[3]_i_12_n_0\,
      I4 => \state[3]_i_11_n_0\,
      I5 => \status_reg_reg_n_0_[0]\,
      O => \wait_counter[31]_i_7_n_0\
    );
\wait_counter[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \status_reg_reg_n_0_[0]\,
      I1 => timeout_counter(24),
      I2 => timeout_counter(16),
      I3 => timeout_counter(18),
      I4 => error_i_12_n_0,
      O => \wait_counter[31]_i_8_n_0\
    );
\wait_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF2302CF"
    )
        port map (
      I0 => wait_counter0(3),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \wait_counter[3]_i_1_n_0\
    );
\wait_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84A40000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => wait_counter0(4),
      O => \wait_counter[4]_i_1_n_0\
    );
\wait_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CCF6C4"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => wait_counter0(5),
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => \wait_counter[5]_i_1_n_0\
    );
\wait_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0EA00F5FFEA0000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => wait_counter0(6),
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \wait_counter[6]_i_1_n_0\
    );
\wait_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"802FF82F"
    )
        port map (
      I0 => wait_counter0(7),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \wait_counter[7]_i_1_n_0\
    );
\wait_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF2302CF"
    )
        port map (
      I0 => wait_counter0(8),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \wait_counter[8]_i_1_n_0\
    );
\wait_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"802FF82F"
    )
        port map (
      I0 => wait_counter0(9),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \wait_counter[9]_i_1_n_0\
    );
\wait_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[0]_i_1_n_0\,
      Q => wait_counter(0)
    );
\wait_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[10]_i_1_n_0\,
      Q => wait_counter(10)
    );
\wait_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[11]_i_1_n_0\,
      Q => wait_counter(11)
    );
\wait_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[12]_i_1_n_0\,
      Q => wait_counter(12)
    );
\wait_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[13]_i_1_n_0\,
      Q => wait_counter(13)
    );
\wait_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[14]_i_1_n_0\,
      Q => wait_counter(14)
    );
\wait_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[15]_i_1_n_0\,
      Q => wait_counter(15)
    );
\wait_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[16]_i_1_n_0\,
      Q => wait_counter(16)
    );
\wait_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[17]_i_1_n_0\,
      Q => wait_counter(17)
    );
\wait_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[18]_i_1_n_0\,
      Q => wait_counter(18)
    );
\wait_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[19]_i_1_n_0\,
      Q => wait_counter(19)
    );
\wait_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[1]_i_1_n_0\,
      Q => wait_counter(1)
    );
\wait_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[20]_i_1_n_0\,
      Q => wait_counter(20)
    );
\wait_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[21]_i_1_n_0\,
      Q => wait_counter(21)
    );
\wait_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[22]_i_1_n_0\,
      Q => wait_counter(22)
    );
\wait_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[23]_i_1_n_0\,
      Q => wait_counter(23)
    );
\wait_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[24]_i_1_n_0\,
      Q => wait_counter(24)
    );
\wait_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[25]_i_1_n_0\,
      Q => wait_counter(25)
    );
\wait_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[26]_i_1_n_0\,
      Q => wait_counter(26)
    );
\wait_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[27]_i_1_n_0\,
      Q => wait_counter(27)
    );
\wait_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[28]_i_1_n_0\,
      Q => wait_counter(28)
    );
\wait_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[29]_i_1_n_0\,
      Q => wait_counter(29)
    );
\wait_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[2]_i_1_n_0\,
      Q => wait_counter(2)
    );
\wait_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[30]_i_1_n_0\,
      Q => wait_counter(30)
    );
\wait_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[31]_i_2_n_0\,
      Q => wait_counter(31)
    );
\wait_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[3]_i_1_n_0\,
      Q => wait_counter(3)
    );
\wait_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[4]_i_1_n_0\,
      Q => wait_counter(4)
    );
\wait_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[5]_i_1_n_0\,
      Q => wait_counter(5)
    );
\wait_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[6]_i_1_n_0\,
      Q => wait_counter(6)
    );
\wait_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[7]_i_1_n_0\,
      Q => wait_counter(7)
    );
\wait_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[8]_i_1_n_0\,
      Q => wait_counter(8)
    );
\wait_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wait_counter[31]_i_1_n_0\,
      CLR => \read_data[7]_i_2_n_0\,
      D => \wait_counter[9]_i_1_n_0\,
      Q => wait_counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_w25q128_controller_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_w25q128_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_w25q128_controller_0_0 : entity is "design_1_w25q128_controller_0_0,w25q128_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_w25q128_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_w25q128_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_w25q128_controller_0_0 : entity is "w25q128_controller,Vivado 2022.1";
end design_1_w25q128_controller_0_0;

architecture STRUCTURE of design_1_w25q128_controller_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_w25q128_controller_0_0_w25q128_controller
     port map (
      address(23 downto 0) => address(23 downto 0),
      busy => busy,
      clk => clk,
      cmd_erase_sector => cmd_erase_sector,
      cmd_program => cmd_program,
      cmd_read => cmd_read,
      cmd_read_id => cmd_read_id,
      done => done,
      error => error,
      jedec_id(23 downto 0) => jedec_id(23 downto 0),
      read_data(7 downto 0) => read_data(7 downto 0),
      rst_n => rst_n,
      shift_out(7 downto 0) => shift_out(7 downto 0),
      spi_cs_n => spi_cs_n,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sck_reg_0 => spi_sck,
      write_data(7 downto 0) => write_data(7 downto 0)
    );
end STRUCTURE;
