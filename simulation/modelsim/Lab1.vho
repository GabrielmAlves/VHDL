-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/25/2024 21:41:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab1 IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ALUCtl : IN std_logic_vector(3 DOWNTO 0);
	R : BUFFER std_logic_vector(31 DOWNTO 0);
	Zero : BUFFER std_logic;
	Overflow : BUFFER std_logic;
	Cout : BUFFER std_logic
	);
END Lab1;

-- Design Ports Information
-- R[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[16]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[17]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[18]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[19]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[20]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[22]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[23]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[24]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[25]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[26]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[27]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[28]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[29]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[30]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[31]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtl[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtl[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtl[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtl[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUCtl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \R[8]~output_o\ : std_logic;
SIGNAL \R[9]~output_o\ : std_logic;
SIGNAL \R[10]~output_o\ : std_logic;
SIGNAL \R[11]~output_o\ : std_logic;
SIGNAL \R[12]~output_o\ : std_logic;
SIGNAL \R[13]~output_o\ : std_logic;
SIGNAL \R[14]~output_o\ : std_logic;
SIGNAL \R[15]~output_o\ : std_logic;
SIGNAL \R[16]~output_o\ : std_logic;
SIGNAL \R[17]~output_o\ : std_logic;
SIGNAL \R[18]~output_o\ : std_logic;
SIGNAL \R[19]~output_o\ : std_logic;
SIGNAL \R[20]~output_o\ : std_logic;
SIGNAL \R[21]~output_o\ : std_logic;
SIGNAL \R[22]~output_o\ : std_logic;
SIGNAL \R[23]~output_o\ : std_logic;
SIGNAL \R[24]~output_o\ : std_logic;
SIGNAL \R[25]~output_o\ : std_logic;
SIGNAL \R[26]~output_o\ : std_logic;
SIGNAL \R[27]~output_o\ : std_logic;
SIGNAL \R[28]~output_o\ : std_logic;
SIGNAL \R[29]~output_o\ : std_logic;
SIGNAL \R[30]~output_o\ : std_logic;
SIGNAL \R[31]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \ALUCtl[2]~input_o\ : std_logic;
SIGNAL \ALUCtl[1]~input_o\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \ALUCtl[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \R_int~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~combout\ : std_logic;
SIGNAL \R_int~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~combout\ : std_logic;
SIGNAL \R_int~2_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \R_int~3_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~combout\ : std_logic;
SIGNAL \R_int~4_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~combout\ : std_logic;
SIGNAL \R_int~5_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \R_int~6_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \R_int~7_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \R_int~8_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \R_int~9_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \R_int~10_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \R_int~11_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~combout\ : std_logic;
SIGNAL \R_int~12_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \R_int~13_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \R_int~14_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~combout\ : std_logic;
SIGNAL \R_int~15_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \R_int~16_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~combout\ : std_logic;
SIGNAL \R_int~17_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~combout\ : std_logic;
SIGNAL \R_int~18_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~combout\ : std_logic;
SIGNAL \R_int~19_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \R_int~20_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~combout\ : std_logic;
SIGNAL \R_int~21_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~combout\ : std_logic;
SIGNAL \R_int~22_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~combout\ : std_logic;
SIGNAL \R_int~23_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~combout\ : std_logic;
SIGNAL \R_int~24_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \R_int~25_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \R_int~26_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \R_int~27_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~combout\ : std_logic;
SIGNAL \R_int~28_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~combout\ : std_logic;
SIGNAL \R_int~29_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \ALUCtl[3]~input_o\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Overflow$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALUCtl <= ALUCtl;
R <= ww_R;
Zero <= ww_Zero;
Overflow <= ww_Overflow;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X81_Y0_N16
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~5_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\R[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~combout\,
	devoe => ww_devoe,
	o => \R[10]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\R[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~combout\,
	devoe => ww_devoe,
	o => \R[11]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\R[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~combout\,
	devoe => ww_devoe,
	o => \R[12]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\R[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~combout\,
	devoe => ww_devoe,
	o => \R[13]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\R[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~combout\,
	devoe => ww_devoe,
	o => \R[14]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\R[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~combout\,
	devoe => ww_devoe,
	o => \R[15]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\R[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~combout\,
	devoe => ww_devoe,
	o => \R[16]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\R[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~combout\,
	devoe => ww_devoe,
	o => \R[17]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\R[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~combout\,
	devoe => ww_devoe,
	o => \R[18]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\R[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~combout\,
	devoe => ww_devoe,
	o => \R[19]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\R[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~combout\,
	devoe => ww_devoe,
	o => \R[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\R[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~combout\,
	devoe => ww_devoe,
	o => \R[21]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\R[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~combout\,
	devoe => ww_devoe,
	o => \R[22]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\R[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~combout\,
	devoe => ww_devoe,
	o => \R[23]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\R[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~combout\,
	devoe => ww_devoe,
	o => \R[24]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\R[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~combout\,
	devoe => ww_devoe,
	o => \R[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\R[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~combout\,
	devoe => ww_devoe,
	o => \R[26]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\R[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~combout\,
	devoe => ww_devoe,
	o => \R[27]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\R[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~combout\,
	devoe => ww_devoe,
	o => \R[28]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\R[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~combout\,
	devoe => ww_devoe,
	o => \R[29]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\R[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~combout\,
	devoe => ww_devoe,
	o => \R[30]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\R[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~combout\,
	devoe => ww_devoe,
	o => \R[31]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Overflow$latch~combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\ALUCtl[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtl(2),
	o => \ALUCtl[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\ALUCtl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtl(1),
	o => \ALUCtl[1]~input_o\);

-- Location: LCCOMB_X63_Y2_N0
\Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (!\ALUCtl[2]~input_o\ & !\ALUCtl[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \ALUCtl[1]~input_o\,
	combout => \Mux32~4_combout\);

-- Location: IOIBUF_X62_Y0_N15
\ALUCtl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtl(0),
	o => \ALUCtl[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X67_Y4_N0
\Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\ALUCtl[0]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\ALUCtl[0]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X67_Y4_N4
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\B[0]~input_o\ & (\ALUCtl[2]~input_o\ & (!\ALUCtl[1]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ALUCtl[2]~input_o\,
	datac => \ALUCtl[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X67_Y4_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B[0]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X67_Y4_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X67_Y4_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\A[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\A[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\A[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\A[0]~input_o\ & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X67_Y4_N8
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (!\ALUCtl[0]~input_o\ & ((\Mux32~0_combout\) # ((\ALUCtl[1]~input_o\ & \Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[0]~input_o\,
	datab => \ALUCtl[1]~input_o\,
	datac => \Mux32~0_combout\,
	datad => \Add0~3_combout\,
	combout => \Mux32~1_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X66_Y2_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X66_Y2_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X66_Y2_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X66_Y2_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X66_Y2_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X66_Y2_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X66_Y2_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X66_Y2_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\A[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X66_Y2_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\B[8]~input_o\ & ((!\LessThan0~15_cout\) # (!\A[8]~input_o\))) # (!\B[8]~input_o\ & (!\A[8]~input_o\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X66_Y2_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\A[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\B[9]~input_o\))) # (!\A[9]~input_o\ & (!\B[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X66_Y2_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\B[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\A[10]~input_o\))) # (!\B[10]~input_o\ & (!\A[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X66_Y2_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\A[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\B[11]~input_o\))) # (!\A[11]~input_o\ & (!\B[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X66_Y2_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\B[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X66_Y2_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X66_Y2_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\A[14]~input_o\ & (\B[14]~input_o\ & !\LessThan0~27_cout\)) # (!\A[14]~input_o\ & ((\B[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X66_Y2_N30
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\B[15]~input_o\ & (\A[15]~input_o\ & !\LessThan0~29_cout\)) # (!\B[15]~input_o\ & ((\A[15]~input_o\) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X66_Y1_N0
\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\B[16]~input_o\ & ((!\LessThan0~31_cout\) # (!\A[16]~input_o\))) # (!\B[16]~input_o\ & (!\A[16]~input_o\ & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X66_Y1_N2
\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\B[17]~input_o\ & (\A[17]~input_o\ & !\LessThan0~33_cout\)) # (!\B[17]~input_o\ & ((\A[17]~input_o\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X66_Y1_N4
\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\B[18]~input_o\ & ((!\LessThan0~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X66_Y1_N6
\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\A[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\B[19]~input_o\))) # (!\A[19]~input_o\ & (!\B[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X66_Y1_N8
\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\B[20]~input_o\ & ((!\LessThan0~39_cout\) # (!\A[20]~input_o\))) # (!\B[20]~input_o\ & (!\A[20]~input_o\ & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X66_Y1_N10
\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\B[21]~input_o\ & (\A[21]~input_o\ & !\LessThan0~41_cout\)) # (!\B[21]~input_o\ & ((\A[21]~input_o\) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X66_Y1_N12
\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\B[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X66_Y1_N14
\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\B[23]~input_o\ & (\A[23]~input_o\ & !\LessThan0~45_cout\)) # (!\B[23]~input_o\ & ((\A[23]~input_o\) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X66_Y1_N16
\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\B[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\A[24]~input_o\))) # (!\B[24]~input_o\ & (!\A[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X66_Y1_N18
\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\B[25]~input_o\ & (\A[25]~input_o\ & !\LessThan0~49_cout\)) # (!\B[25]~input_o\ & ((\A[25]~input_o\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X66_Y1_N20
\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\B[26]~input_o\ & ((!\LessThan0~51_cout\) # (!\A[26]~input_o\))) # (!\B[26]~input_o\ & (!\A[26]~input_o\ & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X66_Y1_N22
\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\B[27]~input_o\ & (\A[27]~input_o\ & !\LessThan0~53_cout\)) # (!\B[27]~input_o\ & ((\A[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X66_Y1_N24
\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\B[28]~input_o\ & ((!\LessThan0~55_cout\) # (!\A[28]~input_o\))) # (!\B[28]~input_o\ & (!\A[28]~input_o\ & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X66_Y1_N26
\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\B[29]~input_o\ & (\A[29]~input_o\ & !\LessThan0~57_cout\)) # (!\B[29]~input_o\ & ((\A[29]~input_o\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X66_Y1_N28
\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\A[30]~input_o\ & (\B[30]~input_o\ & !\LessThan0~59_cout\)) # (!\A[30]~input_o\ & ((\B[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X66_Y1_N30
\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\A[31]~input_o\ & ((\LessThan0~61_cout\) # (!\B[31]~input_o\))) # (!\A[31]~input_o\ & (\LessThan0~61_cout\ & !\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X67_Y4_N6
\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\ALUCtl[0]~input_o\ & (\ALUCtl[1]~input_o\ & (\ALUCtl[2]~input_o\ & \LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[0]~input_o\,
	datab => \ALUCtl[1]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	datad => \LessThan0~62_combout\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X67_Y4_N10
\Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (\Mux32~1_combout\) # ((\Mux32~2_combout\) # ((\Mux32~4_combout\ & \Mux32~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \Mux32~3_combout\,
	datac => \Mux32~1_combout\,
	datad => \Mux32~2_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X63_Y2_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ALUCtl[1]~input_o\ & (!\ALUCtl[0]~input_o\)) # (!\ALUCtl[1]~input_o\ & ((\ALUCtl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[0]~input_o\,
	datab => \ALUCtl[2]~input_o\,
	datac => \ALUCtl[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X63_Y2_N2
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\ALUCtl[1]~input_o\) # ((\ALUCtl[0]~input_o\ & !\ALUCtl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[0]~input_o\,
	datab => \ALUCtl[2]~input_o\,
	datac => \ALUCtl[1]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X66_Y4_N4
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \ALUCtl[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X67_Y4_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\A[1]~input_o\ $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\A[1]~input_o\ & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\A[1]~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X66_Y4_N2
\R_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~0_combout\ = (\A[1]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \R_int~0_combout\);

-- Location: LCCOMB_X66_Y4_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~6_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~0_combout\))))) # (!\Mux15~0_combout\ & (!\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux15~1_combout\,
	datac => \Add0~6_combout\,
	datad => \R_int~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X66_Y4_N18
Mux31 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~combout\ = (\Mux32~4_combout\ & ((\A[1]~input_o\ & ((\B[1]~input_o\) # (!\Mux31~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & !\Mux31~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \B[1]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~combout\);

-- Location: LCCOMB_X66_Y4_N14
\R_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~1_combout\ = (\B[2]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \R_int~1_combout\);

-- Location: LCCOMB_X66_Y4_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \B[2]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X67_Y4_N22
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\A[2]~input_o\ & (\Add0~7\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\A[2]~input_o\ & (!\Add0~7\)) # (!\A[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\A[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X66_Y4_N12
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~9_combout\))) # (!\Mux15~1_combout\ & (!\R_int~1_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \R_int~1_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~9_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X66_Y4_N10
Mux30 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~combout\ = (\Mux30~0_combout\ & (((\B[2]~input_o\ & \A[2]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux30~0_combout\ & (\Mux32~4_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux32~4_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux30~combout\);

-- Location: LCCOMB_X66_Y4_N28
\R_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~2_combout\ = (\A[3]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \R_int~2_combout\);

-- Location: LCCOMB_X67_Y4_N12
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \B[3]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X67_Y4_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[3]~input_o\ $ (\Add0~11_combout\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\A[3]~input_o\ & ((\Add0~11_combout\) # (!\Add0~10\))) # (!\A[3]~input_o\ & (\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X66_Y4_N26
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~12_combout\))) # (!\Mux15~1_combout\ & (!\R_int~2_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \R_int~2_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X66_Y4_N8
Mux29 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~combout\ = (\Mux32~4_combout\ & ((\B[3]~input_o\ & ((\A[3]~input_o\) # (!\Mux29~0_combout\))) # (!\B[3]~input_o\ & (!\Mux29~0_combout\ & \A[3]~input_o\)))) # (!\Mux32~4_combout\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \Mux29~0_combout\,
	datad => \A[3]~input_o\,
	combout => \Mux29~combout\);

-- Location: LCCOMB_X67_Y4_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B[4]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X67_Y4_N26
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\A[4]~input_o\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\A[4]~input_o\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\A[4]~input_o\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\A[4]~input_o\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X68_Y4_N28
\R_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~3_combout\ = (\A[4]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \R_int~3_combout\);

-- Location: LCCOMB_X68_Y4_N22
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & (\Add0~15_combout\))) # (!\Mux15~1_combout\ & (((!\R_int~3_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add0~15_combout\,
	datad => \R_int~3_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X68_Y4_N0
Mux28 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~combout\ = (\Mux28~0_combout\ & (((\A[4]~input_o\ & \B[4]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux28~0_combout\ & (\Mux32~4_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \A[4]~input_o\,
	datac => \Mux32~4_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux28~combout\);

-- Location: LCCOMB_X68_Y4_N4
\R_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~4_combout\ = (\A[5]~input_o\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \R_int~4_combout\);

-- Location: LCCOMB_X68_Y4_N6
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \B[5]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X67_Y4_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (\A[5]~input_o\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & ((\A[5]~input_o\) # (!\Add0~16\))) # (!\Add0~17_combout\ & (\A[5]~input_o\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X68_Y4_N10
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & ((\Add0~18_combout\)))) # (!\Mux15~1_combout\ & (((!\R_int~4_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \R_int~4_combout\,
	datad => \Add0~18_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X68_Y4_N12
Mux27 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~combout\ = (\Mux32~4_combout\ & ((\B[5]~input_o\ & ((\A[5]~input_o\) # (!\Mux27~0_combout\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & !\Mux27~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~combout\);

-- Location: LCCOMB_X68_Y4_N8
\R_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~5_combout\ = (\A[6]~input_o\) # (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \R_int~5_combout\);

-- Location: LCCOMB_X68_Y4_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \B[6]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X67_Y4_N30
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\A[6]~input_o\ & ((\Add0~20_combout\ & (\Add0~19\ & VCC)) # (!\Add0~20_combout\ & (!\Add0~19\)))) # (!\A[6]~input_o\ & ((\Add0~20_combout\ & (!\Add0~19\)) # (!\Add0~20_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\A[6]~input_o\ & (!\Add0~20_combout\ & !\Add0~19\)) # (!\A[6]~input_o\ & ((!\Add0~19\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X68_Y4_N18
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & ((\Add0~21_combout\)))) # (!\Mux15~1_combout\ & (((!\R_int~5_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \R_int~5_combout\,
	datad => \Add0~21_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X68_Y4_N24
Mux26 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~combout\ = (\Mux32~4_combout\ & ((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Mux26~0_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\Mux26~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~combout\);

-- Location: LCCOMB_X68_Y4_N30
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \ALUCtl[2]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtl[2]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X67_Y3_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\A[7]~input_o\ $ (\Add0~23_combout\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\A[7]~input_o\ & ((\Add0~23_combout\) # (!\Add0~22\))) # (!\A[7]~input_o\ & (\Add0~23_combout\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X68_Y4_N20
\R_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~6_combout\ = (\A[7]~input_o\) # (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \R_int~6_combout\);

-- Location: LCCOMB_X68_Y4_N2
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & (\Add0~24_combout\))) # (!\Mux15~1_combout\ & (((!\R_int~6_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add0~24_combout\,
	datad => \R_int~6_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X68_Y4_N16
Mux25 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~combout\ = (\Mux32~4_combout\ & ((\Mux25~0_combout\ & (\A[7]~input_o\ & \B[7]~input_o\)) # (!\Mux25~0_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))))) # (!\Mux32~4_combout\ & (\Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \Mux25~0_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux25~combout\);

-- Location: LCCOMB_X63_Y3_N24
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \ALUCtl[2]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X67_Y3_N2
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26_combout\ & ((\A[8]~input_o\ & (\Add0~25\ & VCC)) # (!\A[8]~input_o\ & (!\Add0~25\)))) # (!\Add0~26_combout\ & ((\A[8]~input_o\ & (!\Add0~25\)) # (!\A[8]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\Add0~26_combout\ & (!\A[8]~input_o\ & !\Add0~25\)) # (!\Add0~26_combout\ & ((!\Add0~25\) # (!\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X63_Y2_N26
\R_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~7_combout\ = (\B[8]~input_o\) # (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \R_int~7_combout\);

-- Location: LCCOMB_X63_Y2_N20
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux15~1_combout\ & (\Add0~27_combout\ & ((\Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (((!\Mux15~0_combout\) # (!\R_int~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \Mux15~1_combout\,
	datac => \R_int~7_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X63_Y2_N24
Mux24 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~combout\ = (\Mux24~0_combout\ & (((\B[8]~input_o\ & \A[8]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux24~0_combout\ & (\Mux32~4_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \A[8]~input_o\,
	datad => \Mux32~4_combout\,
	combout => \Mux24~combout\);

-- Location: LCCOMB_X68_Y3_N20
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \ALUCtl[2]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtl[2]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X67_Y3_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\Add0~29_combout\ $ (\A[9]~input_o\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\Add0~29_combout\ & ((\A[9]~input_o\) # (!\Add0~28\))) # (!\Add0~29_combout\ & (\A[9]~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X68_Y3_N18
\R_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~8_combout\ = (\A[9]~input_o\) # (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \R_int~8_combout\);

-- Location: LCCOMB_X68_Y3_N12
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & (\Add0~30_combout\))) # (!\Mux15~1_combout\ & (((!\R_int~8_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add0~30_combout\,
	datad => \R_int~8_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X68_Y3_N26
Mux23 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~combout\ = (\Mux23~0_combout\ & (((\A[9]~input_o\ & \B[9]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux23~0_combout\ & (\Mux32~4_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \Mux32~4_combout\,
	combout => \Mux23~combout\);

-- Location: LCCOMB_X68_Y3_N24
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \B[10]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X67_Y3_N6
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32_combout\ & ((\A[10]~input_o\ & (\Add0~31\ & VCC)) # (!\A[10]~input_o\ & (!\Add0~31\)))) # (!\Add0~32_combout\ & ((\A[10]~input_o\ & (!\Add0~31\)) # (!\A[10]~input_o\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\Add0~32_combout\ & (!\A[10]~input_o\ & !\Add0~31\)) # (!\Add0~32_combout\ & ((!\Add0~31\) # (!\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X68_Y3_N2
\R_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~9_combout\ = (\B[10]~input_o\) # (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \R_int~9_combout\);

-- Location: LCCOMB_X68_Y3_N4
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & (\Add0~33_combout\))) # (!\Mux15~1_combout\ & (((!\R_int~9_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add0~33_combout\,
	datad => \R_int~9_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X68_Y3_N30
Mux22 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~combout\ = (\Mux22~0_combout\ & (((\A[10]~input_o\ & \B[10]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux22~0_combout\ & (\Mux32~4_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Mux22~0_combout\,
	datac => \B[10]~input_o\,
	datad => \Mux32~4_combout\,
	combout => \Mux22~combout\);

-- Location: LCCOMB_X68_Y3_N28
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \B[11]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X67_Y3_N8
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\A[11]~input_o\ $ (\Add0~35_combout\ $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\A[11]~input_o\ & ((\Add0~35_combout\) # (!\Add0~34\))) # (!\A[11]~input_o\ & (\Add0~35_combout\ & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X68_Y3_N6
\R_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~10_combout\ = (\B[11]~input_o\) # (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \R_int~10_combout\);

-- Location: LCCOMB_X68_Y3_N0
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~36_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~10_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \R_int~10_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X68_Y3_N10
Mux21 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~combout\ = (\Mux32~4_combout\ & ((\A[11]~input_o\ & ((\B[11]~input_o\) # (!\Mux21~0_combout\))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & !\Mux21~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \B[11]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~combout\);

-- Location: LCCOMB_X69_Y3_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \ALUCtl[2]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtl[2]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X67_Y3_N10
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\A[12]~input_o\ & (\Add0~37\ & VCC)) # (!\A[12]~input_o\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\A[12]~input_o\ & (!\Add0~37\)) # (!\A[12]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\A[12]~input_o\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X69_Y3_N18
\R_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~11_combout\ = (\A[12]~input_o\) # (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \R_int~11_combout\);

-- Location: LCCOMB_X69_Y3_N28
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~39_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~11_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Add0~39_combout\,
	datac => \Mux15~1_combout\,
	datad => \R_int~11_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X69_Y3_N10
Mux20 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~combout\ = (\Mux20~0_combout\ & (((\A[12]~input_o\ & \B[12]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux20~0_combout\ & (\Mux32~4_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \Mux32~4_combout\,
	datad => \B[12]~input_o\,
	combout => \Mux20~combout\);

-- Location: LCCOMB_X69_Y3_N30
\R_int~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~12_combout\ = (\A[13]~input_o\) # (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	combout => \R_int~12_combout\);

-- Location: LCCOMB_X69_Y3_N8
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \ALUCtl[2]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[2]~input_o\,
	datac => \B[13]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X67_Y3_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\Add0~41_combout\ $ (\A[13]~input_o\ $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\Add0~41_combout\ & ((\A[13]~input_o\) # (!\Add0~40\))) # (!\Add0~41_combout\ & (\A[13]~input_o\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X69_Y3_N0
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~42_combout\))) # (!\Mux15~1_combout\ & (!\R_int~12_combout\)))) # (!\Mux15~0_combout\ & (!\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux15~1_combout\,
	datac => \R_int~12_combout\,
	datad => \Add0~42_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X69_Y3_N2
Mux19 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~combout\ = (\Mux32~4_combout\ & ((\A[13]~input_o\ & ((\B[13]~input_o\) # (!\Mux19~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & !\Mux19~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~combout\);

-- Location: LCCOMB_X69_Y3_N24
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \ALUCtl[2]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtl[2]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X67_Y3_N14
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\A[14]~input_o\ & ((\Add0~44_combout\ & (\Add0~43\ & VCC)) # (!\Add0~44_combout\ & (!\Add0~43\)))) # (!\A[14]~input_o\ & ((\Add0~44_combout\ & (!\Add0~43\)) # (!\Add0~44_combout\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\A[14]~input_o\ & (!\Add0~44_combout\ & !\Add0~43\)) # (!\A[14]~input_o\ & ((!\Add0~43\) # (!\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X69_Y3_N6
\R_int~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~13_combout\ = (\B[14]~input_o\) # (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \R_int~13_combout\);

-- Location: LCCOMB_X68_Y3_N8
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~45_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~13_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \R_int~13_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X69_Y3_N16
Mux18 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~combout\ = (\Mux18~0_combout\ & (((\B[14]~input_o\ & \A[14]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux18~0_combout\ & (\Mux32~4_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Mux32~4_combout\,
	datad => \A[14]~input_o\,
	combout => \Mux18~combout\);

-- Location: LCCOMB_X69_Y3_N14
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \ALUCtl[2]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtl[2]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X67_Y3_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\A[15]~input_o\ $ (\Add0~47_combout\ $ (!\Add0~46\)))) # (GND)
-- \Add0~49\ = CARRY((\A[15]~input_o\ & ((\Add0~47_combout\) # (!\Add0~46\))) # (!\A[15]~input_o\ & (\Add0~47_combout\ & !\Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Add0~47_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X69_Y3_N4
\R_int~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~14_combout\ = (\B[15]~input_o\) # (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	combout => \R_int~14_combout\);

-- Location: LCCOMB_X68_Y3_N14
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~48_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~14_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \R_int~14_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X69_Y3_N22
Mux17 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~combout\ = (\Mux32~4_combout\ & ((\B[15]~input_o\ & ((\A[15]~input_o\) # (!\Mux17~0_combout\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & !\Mux17~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~combout\);

-- Location: LCCOMB_X66_Y3_N22
\R_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~15_combout\ = (\B[16]~input_o\) # (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \R_int~15_combout\);

-- Location: LCCOMB_X66_Y3_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \B[16]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[16]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X67_Y3_N18
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\A[16]~input_o\ & ((\Add0~50_combout\ & (\Add0~49\ & VCC)) # (!\Add0~50_combout\ & (!\Add0~49\)))) # (!\A[16]~input_o\ & ((\Add0~50_combout\ & (!\Add0~49\)) # (!\Add0~50_combout\ & ((\Add0~49\) # (GND)))))
-- \Add0~52\ = CARRY((\A[16]~input_o\ & (!\Add0~50_combout\ & !\Add0~49\)) # (!\A[16]~input_o\ & ((!\Add0~49\) # (!\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X66_Y3_N4
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~51_combout\))) # (!\Mux15~1_combout\ & (!\R_int~15_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~15_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~51_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X66_Y3_N10
Mux16 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~combout\ = (\Mux32~4_combout\ & ((\B[16]~input_o\ & ((\A[16]~input_o\) # (!\Mux16~0_combout\))) # (!\B[16]~input_o\ & (!\Mux16~0_combout\ & \A[16]~input_o\)))) # (!\Mux32~4_combout\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \B[16]~input_o\,
	datac => \Mux16~0_combout\,
	datad => \A[16]~input_o\,
	combout => \Mux16~combout\);

-- Location: LCCOMB_X66_Y4_N6
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \ALUCtl[2]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X67_Y3_N20
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\A[17]~input_o\ $ (\Add0~53_combout\ $ (!\Add0~52\)))) # (GND)
-- \Add0~55\ = CARRY((\A[17]~input_o\ & ((\Add0~53_combout\) # (!\Add0~52\))) # (!\A[17]~input_o\ & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X66_Y4_N20
\R_int~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~16_combout\ = (\B[17]~input_o\) # (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \R_int~16_combout\);

-- Location: LCCOMB_X66_Y4_N22
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~54_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~16_combout\))))) # (!\Mux15~0_combout\ & (!\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux15~1_combout\,
	datac => \Add0~54_combout\,
	datad => \R_int~16_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X66_Y4_N0
Mux15 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~combout\ = (\Mux15~2_combout\ & (((\B[17]~input_o\ & \A[17]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux15~2_combout\ & (\Mux32~4_combout\ & ((\B[17]~input_o\) # (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \B[17]~input_o\,
	datac => \Mux32~4_combout\,
	datad => \A[17]~input_o\,
	combout => \Mux15~combout\);

-- Location: LCCOMB_X66_Y3_N26
\R_int~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~17_combout\ = (\B[18]~input_o\) # (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \R_int~17_combout\);

-- Location: LCCOMB_X66_Y3_N0
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \B[18]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X67_Y3_N22
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56_combout\ & ((\A[18]~input_o\ & (\Add0~55\ & VCC)) # (!\A[18]~input_o\ & (!\Add0~55\)))) # (!\Add0~56_combout\ & ((\A[18]~input_o\ & (!\Add0~55\)) # (!\A[18]~input_o\ & ((\Add0~55\) # (GND)))))
-- \Add0~58\ = CARRY((\Add0~56_combout\ & (!\A[18]~input_o\ & !\Add0~55\)) # (!\Add0~56_combout\ & ((!\Add0~55\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X66_Y3_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~57_combout\))) # (!\Mux15~1_combout\ & (!\R_int~17_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~17_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~57_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X66_Y3_N30
Mux14 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~combout\ = (\Mux14~0_combout\ & (((\B[18]~input_o\ & \A[18]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux14~0_combout\ & (\Mux32~4_combout\ & ((\B[18]~input_o\) # (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \Mux32~4_combout\,
	datad => \A[18]~input_o\,
	combout => \Mux14~combout\);

-- Location: LCCOMB_X66_Y3_N6
\R_int~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~18_combout\ = (\A[19]~input_o\) # (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	combout => \R_int~18_combout\);

-- Location: LCCOMB_X66_Y3_N24
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \ALUCtl[2]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[2]~input_o\,
	datac => \B[19]~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X67_Y3_N24
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\A[19]~input_o\ $ (\Add0~59_combout\ $ (!\Add0~58\)))) # (GND)
-- \Add0~61\ = CARRY((\A[19]~input_o\ & ((\Add0~59_combout\) # (!\Add0~58\))) # (!\A[19]~input_o\ & (\Add0~59_combout\ & !\Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X66_Y3_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~60_combout\))) # (!\Mux15~1_combout\ & (!\R_int~18_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~18_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X66_Y3_N14
Mux13 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~combout\ = (\Mux32~4_combout\ & ((\B[19]~input_o\ & ((\A[19]~input_o\) # (!\Mux13~0_combout\))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & !\Mux13~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~combout\);

-- Location: LCCOMB_X66_Y3_N12
\R_int~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~19_combout\ = (\B[20]~input_o\) # (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \R_int~19_combout\);

-- Location: LCCOMB_X63_Y3_N6
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \ALUCtl[2]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[20]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X67_Y3_N26
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\Add0~62_combout\ & ((\A[20]~input_o\ & (\Add0~61\ & VCC)) # (!\A[20]~input_o\ & (!\Add0~61\)))) # (!\Add0~62_combout\ & ((\A[20]~input_o\ & (!\Add0~61\)) # (!\A[20]~input_o\ & ((\Add0~61\) # (GND)))))
-- \Add0~64\ = CARRY((\Add0~62_combout\ & (!\A[20]~input_o\ & !\Add0~61\)) # (!\Add0~62_combout\ & ((!\Add0~61\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X66_Y3_N2
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~63_combout\))) # (!\Mux15~1_combout\ & (!\R_int~19_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~19_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~63_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X66_Y3_N8
Mux12 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~combout\ = (\Mux32~4_combout\ & ((\Mux12~0_combout\ & (\B[20]~input_o\ & \A[20]~input_o\)) # (!\Mux12~0_combout\ & ((\B[20]~input_o\) # (\A[20]~input_o\))))) # (!\Mux32~4_combout\ & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \Mux12~0_combout\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mux12~combout\);

-- Location: LCCOMB_X63_Y3_N16
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \B[21]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X67_Y3_N28
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\Add0~65_combout\ $ (\A[21]~input_o\ $ (!\Add0~64\)))) # (GND)
-- \Add0~67\ = CARRY((\Add0~65_combout\ & ((\A[21]~input_o\) # (!\Add0~64\))) # (!\Add0~65_combout\ & (\A[21]~input_o\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X63_Y3_N18
\R_int~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~20_combout\ = (\A[21]~input_o\) # (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \R_int~20_combout\);

-- Location: LCCOMB_X63_Y3_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & (\Add0~66_combout\))) # (!\Mux15~1_combout\ & (((!\R_int~20_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add0~66_combout\,
	datad => \R_int~20_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X63_Y3_N10
Mux11 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~combout\ = (\Mux32~4_combout\ & ((\A[21]~input_o\ & ((\B[21]~input_o\) # (!\Mux11~0_combout\))) # (!\A[21]~input_o\ & (!\Mux11~0_combout\ & \B[21]~input_o\)))) # (!\Mux32~4_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \Mux11~0_combout\,
	datad => \B[21]~input_o\,
	combout => \Mux11~combout\);

-- Location: LCCOMB_X63_Y3_N30
\R_int~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~21_combout\ = (\B[22]~input_o\) # (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	combout => \R_int~21_combout\);

-- Location: LCCOMB_X63_Y3_N20
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \ALUCtl[2]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[22]~input_o\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X67_Y3_N30
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\A[22]~input_o\ & ((\Add0~68_combout\ & (\Add0~67\ & VCC)) # (!\Add0~68_combout\ & (!\Add0~67\)))) # (!\A[22]~input_o\ & ((\Add0~68_combout\ & (!\Add0~67\)) # (!\Add0~68_combout\ & ((\Add0~67\) # (GND)))))
-- \Add0~70\ = CARRY((\A[22]~input_o\ & (!\Add0~68_combout\ & !\Add0~67\)) # (!\A[22]~input_o\ & ((!\Add0~67\) # (!\Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Add0~68_combout\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X63_Y3_N0
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & ((\Add0~69_combout\)))) # (!\Mux15~1_combout\ & (((!\R_int~21_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \R_int~21_combout\,
	datad => \Add0~69_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X63_Y3_N26
Mux10 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~combout\ = (\Mux32~4_combout\ & ((\A[22]~input_o\ & ((\B[22]~input_o\) # (!\Mux10~0_combout\))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & !\Mux10~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \B[22]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~combout\);

-- Location: LCCOMB_X63_Y3_N22
\R_int~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~22_combout\ = (\B[23]~input_o\) # (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	combout => \R_int~22_combout\);

-- Location: LCCOMB_X63_Y3_N28
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \B[23]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[23]~input_o\,
	datac => \ALUCtl[2]~input_o\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X67_Y2_N0
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\Add0~71_combout\ $ (\A[23]~input_o\ $ (!\Add0~70\)))) # (GND)
-- \Add0~73\ = CARRY((\Add0~71_combout\ & ((\A[23]~input_o\) # (!\Add0~70\))) # (!\Add0~71_combout\ & (\A[23]~input_o\ & !\Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~71_combout\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X63_Y3_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux15~1_combout\ & (((\Add0~72_combout\ & \Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (((!\Mux15~0_combout\)) # (!\R_int~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~22_combout\,
	datab => \Mux15~1_combout\,
	datac => \Add0~72_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X63_Y3_N2
Mux9 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~combout\ = (\Mux9~0_combout\ & (((\A[23]~input_o\ & \B[23]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux9~0_combout\ & (\Mux32~4_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux32~4_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Mux9~combout\);

-- Location: LCCOMB_X65_Y4_N2
\R_int~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~23_combout\ = (\A[24]~input_o\) # (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \R_int~23_combout\);

-- Location: LCCOMB_X65_Y4_N24
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \ALUCtl[2]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtl[2]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X67_Y2_N2
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\A[24]~input_o\ & ((\Add0~74_combout\ & (\Add0~73\ & VCC)) # (!\Add0~74_combout\ & (!\Add0~73\)))) # (!\A[24]~input_o\ & ((\Add0~74_combout\ & (!\Add0~73\)) # (!\Add0~74_combout\ & ((\Add0~73\) # (GND)))))
-- \Add0~76\ = CARRY((\A[24]~input_o\ & (!\Add0~74_combout\ & !\Add0~73\)) # (!\A[24]~input_o\ & ((!\Add0~73\) # (!\Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X65_Y4_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~75_combout\))) # (!\Mux15~1_combout\ & (!\R_int~23_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \R_int~23_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~75_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X65_Y4_N14
Mux8 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~combout\ = (\Mux8~0_combout\ & (((\A[24]~input_o\ & \B[24]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux8~0_combout\ & (\Mux32~4_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux32~4_combout\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Mux8~combout\);

-- Location: LCCOMB_X68_Y2_N6
\R_int~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~24_combout\ = (\B[25]~input_o\) # (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \R_int~24_combout\);

-- Location: LCCOMB_X68_Y2_N4
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \B[25]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \ALUCtl[2]~input_o\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X67_Y2_N4
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = ((\Add0~77_combout\ $ (\A[25]~input_o\ $ (!\Add0~76\)))) # (GND)
-- \Add0~79\ = CARRY((\Add0~77_combout\ & ((\A[25]~input_o\) # (!\Add0~76\))) # (!\Add0~77_combout\ & (\A[25]~input_o\ & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~77_combout\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X68_Y2_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux15~1_combout\ & (((\Add0~78_combout\ & \Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (((!\Mux15~0_combout\)) # (!\R_int~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~24_combout\,
	datab => \Add0~78_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X68_Y2_N30
Mux7 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux7~0_combout\ & (((\B[25]~input_o\ & \A[25]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux7~0_combout\ & (\Mux32~4_combout\ & ((\B[25]~input_o\) # (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux32~4_combout\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux7~combout\);

-- Location: LCCOMB_X67_Y2_N22
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \ALUCtl[2]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X67_Y2_N6
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~80_combout\ & ((\A[26]~input_o\ & (\Add0~79\ & VCC)) # (!\A[26]~input_o\ & (!\Add0~79\)))) # (!\Add0~80_combout\ & ((\A[26]~input_o\ & (!\Add0~79\)) # (!\A[26]~input_o\ & ((\Add0~79\) # (GND)))))
-- \Add0~82\ = CARRY((\Add0~80_combout\ & (!\A[26]~input_o\ & !\Add0~79\)) # (!\Add0~80_combout\ & ((!\Add0~79\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X68_Y2_N0
\R_int~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~25_combout\ = (\B[26]~input_o\) # (\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \R_int~25_combout\);

-- Location: LCCOMB_X68_Y2_N14
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux15~1_combout\ & (\Mux15~0_combout\ & (\Add0~81_combout\))) # (!\Mux15~1_combout\ & (((!\R_int~25_combout\)) # (!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add0~81_combout\,
	datad => \R_int~25_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X68_Y2_N28
Mux6 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Mux6~0_combout\ & (((\B[26]~input_o\ & \A[26]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux6~0_combout\ & (\Mux32~4_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \Mux32~4_combout\,
	datad => \A[26]~input_o\,
	combout => \Mux6~combout\);

-- Location: LCCOMB_X68_Y2_N2
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \ALUCtl[2]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[27]~input_o\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X67_Y2_N8
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\Add0~83_combout\ $ (\A[27]~input_o\ $ (!\Add0~82\)))) # (GND)
-- \Add0~85\ = CARRY((\Add0~83_combout\ & ((\A[27]~input_o\) # (!\Add0~82\))) # (!\Add0~83_combout\ & (\A[27]~input_o\ & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~83_combout\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X68_Y2_N20
\R_int~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~26_combout\ = (\B[27]~input_o\) # (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \R_int~26_combout\);

-- Location: LCCOMB_X68_Y2_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~84_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~26_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \R_int~26_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X68_Y2_N16
Mux5 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~combout\ = (\Mux5~0_combout\ & (((\B[27]~input_o\ & \A[27]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux5~0_combout\ & (\Mux32~4_combout\ & ((\B[27]~input_o\) # (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \B[27]~input_o\,
	datac => \Mux32~4_combout\,
	datad => \A[27]~input_o\,
	combout => \Mux5~combout\);

-- Location: LCCOMB_X68_Y2_N22
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \ALUCtl[2]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[28]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X67_Y2_N10
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~86_combout\ & ((\A[28]~input_o\ & (\Add0~85\ & VCC)) # (!\A[28]~input_o\ & (!\Add0~85\)))) # (!\Add0~86_combout\ & ((\A[28]~input_o\ & (!\Add0~85\)) # (!\A[28]~input_o\ & ((\Add0~85\) # (GND)))))
-- \Add0~88\ = CARRY((\Add0~86_combout\ & (!\A[28]~input_o\ & !\Add0~85\)) # (!\Add0~86_combout\ & ((!\Add0~85\) # (!\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~86_combout\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X68_Y2_N24
\R_int~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~27_combout\ = (\B[28]~input_o\) # (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \R_int~27_combout\);

-- Location: LCCOMB_X68_Y2_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\Add0~87_combout\)) # (!\Mux15~1_combout\ & ((!\R_int~27_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~87_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \R_int~27_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X68_Y2_N8
Mux4 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~combout\ = (\Mux4~0_combout\ & (((\B[28]~input_o\ & \A[28]~input_o\)) # (!\Mux32~4_combout\))) # (!\Mux4~0_combout\ & (\Mux32~4_combout\ & ((\B[28]~input_o\) # (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \Mux32~4_combout\,
	datad => \A[28]~input_o\,
	combout => \Mux4~combout\);

-- Location: LCCOMB_X67_Y2_N30
\R_int~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~28_combout\ = (\B[29]~input_o\) # (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \R_int~28_combout\);

-- Location: LCCOMB_X67_Y2_N28
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \B[29]~input_o\ $ (\ALUCtl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \ALUCtl[2]~input_o\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X67_Y2_N12
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\A[29]~input_o\ $ (\Add0~89_combout\ $ (!\Add0~88\)))) # (GND)
-- \Add0~91\ = CARRY((\A[29]~input_o\ & ((\Add0~89_combout\) # (!\Add0~88\))) # (!\A[29]~input_o\ & (\Add0~89_combout\ & !\Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Add0~89_combout\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X67_Y2_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux15~1_combout\ & (((\Mux15~0_combout\ & \Add0~90_combout\)))) # (!\Mux15~1_combout\ & (((!\Mux15~0_combout\)) # (!\R_int~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_int~28_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~0_combout\,
	datad => \Add0~90_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X67_Y2_N18
Mux3 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~combout\ = (\Mux32~4_combout\ & ((\A[29]~input_o\ & ((\B[29]~input_o\) # (!\Mux3~0_combout\))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & !\Mux3~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \B[29]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~combout\);

-- Location: LCCOMB_X65_Y4_N28
\R_int~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_int~29_combout\ = (\B[30]~input_o\) # (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	combout => \R_int~29_combout\);

-- Location: LCCOMB_X67_Y2_N20
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \ALUCtl[2]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X67_Y2_N14
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\A[30]~input_o\ & ((\Add0~92_combout\ & (\Add0~91\ & VCC)) # (!\Add0~92_combout\ & (!\Add0~91\)))) # (!\A[30]~input_o\ & ((\Add0~92_combout\ & (!\Add0~91\)) # (!\Add0~92_combout\ & ((\Add0~91\) # (GND)))))
-- \Add0~94\ = CARRY((\A[30]~input_o\ & (!\Add0~92_combout\ & !\Add0~91\)) # (!\A[30]~input_o\ & ((!\Add0~91\) # (!\Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X65_Y4_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Add0~93_combout\))) # (!\Mux15~1_combout\ & (!\R_int~29_combout\)))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \R_int~29_combout\,
	datac => \Mux15~1_combout\,
	datad => \Add0~93_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X65_Y4_N16
Mux2 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~combout\ = (\Mux32~4_combout\ & ((\B[30]~input_o\ & ((\A[30]~input_o\) # (!\Mux2~0_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & !\Mux2~0_combout\)))) # (!\Mux32~4_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \Mux32~4_combout\,
	datac => \A[30]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~combout\);

-- Location: LCCOMB_X63_Y2_N6
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = \ALUCtl[2]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \B[31]~input_o\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X67_Y2_N16
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = \A[31]~input_o\ $ (\Add0~94\ $ (!\Add0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datad => \Add0~95_combout\,
	cin => \Add0~94\,
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X63_Y2_N10
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\ALUCtl[1]~input_o\ & ((!\Add0~96_combout\))) # (!\ALUCtl[1]~input_o\ & (\ALUCtl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtl[2]~input_o\,
	datac => \ALUCtl[1]~input_o\,
	datad => \Add0~96_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X63_Y2_N12
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\ALUCtl[1]~input_o\ & (\A[31]~input_o\ $ (\ALUCtl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ALUCtl[2]~input_o\,
	datac => \ALUCtl[1]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X63_Y2_N16
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux32~4_combout\ & ((\B[31]~input_o\) # ((\Mux1~6_combout\ & !\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Mux32~4_combout\,
	datac => \B[31]~input_o\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X63_Y2_N28
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & ((\B[31]~input_o\ & ((\Mux32~4_combout\))) # (!\B[31]~input_o\ & (\Mux1~6_combout\)))) # (!\Mux1~4_combout\ & (((\Mux1~6_combout\ & \B[31]~input_o\)) # (!\Mux32~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Mux32~4_combout\,
	datac => \B[31]~input_o\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X63_Y2_N22
Mux1 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~combout\ = (\Mux1~4_combout\ & (((\Mux1~5_combout\)))) # (!\Mux1~4_combout\ & ((\ALUCtl[0]~input_o\ & (\Mux1~7_combout\)) # (!\ALUCtl[0]~input_o\ & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \ALUCtl[0]~input_o\,
	datac => \Mux1~7_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~combout\);

-- Location: LCCOMB_X63_Y3_N8
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux10~combout\ & !\Mux11~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux10~combout\,
	datad => \Mux11~combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y3_N18
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Mux12~combout\ & (!\Mux13~combout\ & (!\Mux14~combout\ & !\Mux16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~combout\,
	datab => \Mux13~combout\,
	datac => \Mux14~combout\,
	datad => \Mux16~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X63_Y3_N14
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Mux8~combout\ & (!\Mux9~combout\ & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~combout\,
	datab => \Mux9~combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X68_Y2_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux7~combout\ & (!\Mux5~combout\ & (!\Mux4~combout\ & !\Mux6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux5~combout\,
	datac => \Mux4~combout\,
	datad => \Mux6~combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X67_Y2_N26
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux2~combout\ & (!\Mux3~combout\ & (!\Mux1~combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~combout\,
	datab => \Mux3~combout\,
	datac => \Mux1~combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X68_Y3_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux21~combout\ & (!\Mux24~combout\ & (!\Mux22~combout\ & !\Mux23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~combout\,
	datab => \Mux24~combout\,
	datac => \Mux22~combout\,
	datad => \Mux23~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X69_Y3_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux20~combout\ & (!\Mux18~combout\ & (!\Mux17~combout\ & !\Mux19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~combout\,
	datab => \Mux18~combout\,
	datac => \Mux17~combout\,
	datad => \Mux19~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X66_Y4_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux30~combout\ & (!\Mux29~combout\ & (!\Mux15~combout\ & !\Mux31~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~combout\,
	datab => \Mux29~combout\,
	datac => \Mux15~combout\,
	datad => \Mux31~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X68_Y4_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux27~combout\ & (!\Mux26~combout\ & (!\Mux25~combout\ & !\Mux28~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~combout\,
	datab => \Mux26~combout\,
	datac => \Mux25~combout\,
	datad => \Mux28~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X69_Y3_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X68_Y3_N22
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~9_combout\ & (!\Mux32~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~9_combout\,
	datac => \Mux32~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X56_Y0_N15
\ALUCtl[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtl(3),
	o => \ALUCtl[3]~input_o\);

-- Location: LCCOMB_X63_Y2_N8
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\ALUCtl[1]~input_o\ & (!\ALUCtl[3]~input_o\ & !\ALUCtl[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtl[1]~input_o\,
	datab => \ALUCtl[3]~input_o\,
	datac => \ALUCtl[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X63_Y2_N14
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\A[31]~input_o\ & ((\Mux1~combout\) # (\ALUCtl[2]~input_o\ $ (!\B[31]~input_o\)))) # (!\A[31]~input_o\ & ((\ALUCtl[2]~input_o\ $ (\B[31]~input_o\)) # (!\Mux1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ALUCtl[2]~input_o\,
	datac => \B[31]~input_o\,
	datad => \Mux1~combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X63_Y2_N30
\Overflow$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Overflow$latch~combout\ = (\Mux33~0_combout\ & ((!\Mux0~2_combout\))) # (!\Mux33~0_combout\ & (\Overflow$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Overflow$latch~combout\,
	datac => \Mux33~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Overflow$latch~combout\);

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(8) <= \R[8]~output_o\;

ww_R(9) <= \R[9]~output_o\;

ww_R(10) <= \R[10]~output_o\;

ww_R(11) <= \R[11]~output_o\;

ww_R(12) <= \R[12]~output_o\;

ww_R(13) <= \R[13]~output_o\;

ww_R(14) <= \R[14]~output_o\;

ww_R(15) <= \R[15]~output_o\;

ww_R(16) <= \R[16]~output_o\;

ww_R(17) <= \R[17]~output_o\;

ww_R(18) <= \R[18]~output_o\;

ww_R(19) <= \R[19]~output_o\;

ww_R(20) <= \R[20]~output_o\;

ww_R(21) <= \R[21]~output_o\;

ww_R(22) <= \R[22]~output_o\;

ww_R(23) <= \R[23]~output_o\;

ww_R(24) <= \R[24]~output_o\;

ww_R(25) <= \R[25]~output_o\;

ww_R(26) <= \R[26]~output_o\;

ww_R(27) <= \R[27]~output_o\;

ww_R(28) <= \R[28]~output_o\;

ww_R(29) <= \R[29]~output_o\;

ww_R(30) <= \R[30]~output_o\;

ww_R(31) <= \R[31]~output_o\;

ww_Zero <= \Zero~output_o\;

ww_Overflow <= \Overflow~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


