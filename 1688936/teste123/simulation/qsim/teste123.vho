-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/16/2023 15:48:23"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	teste123 IS
    PORT (
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	saida1 : OUT std_logic;
	saida2 : OUT std_logic;
	saida3 : OUT std_logic
	);
END teste123;

ARCHITECTURE structure OF teste123 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_saida1 : std_logic;
SIGNAL ww_saida2 : std_logic;
SIGNAL ww_saida3 : std_logic;
SIGNAL \saida1~output_o\ : std_logic;
SIGNAL \saida2~output_o\ : std_logic;
SIGNAL \saida3~output_o\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \saida1~0_combout\ : std_logic;
SIGNAL \saida2~0_combout\ : std_logic;
SIGNAL \saida2~1_combout\ : std_logic;
SIGNAL \ALT_INV_IN2~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1~input_o\ : std_logic;
SIGNAL \ALT_INV_IN3~input_o\ : std_logic;

BEGIN

ww_IN1 <= IN1;
ww_IN2 <= IN2;
ww_IN3 <= IN3;
saida1 <= ww_saida1;
saida2 <= ww_saida2;
saida3 <= ww_saida3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IN2~input_o\ <= NOT \IN2~input_o\;
\ALT_INV_IN1~input_o\ <= NOT \IN1~input_o\;
\ALT_INV_IN3~input_o\ <= NOT \IN3~input_o\;

\saida1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~0_combout\,
	devoe => ww_devoe,
	o => \saida1~output_o\);

\saida2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida2~0_combout\,
	devoe => ww_devoe,
	o => \saida2~output_o\);

\saida3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida2~1_combout\,
	devoe => ww_devoe,
	o => \saida3~output_o\);

\IN1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

\IN2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

\IN3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN3,
	o => \IN3~input_o\);

\saida1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida1~0_combout\ = ((\IN1~input_o\ & \IN2~input_o\)) # (\IN3~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1~input_o\,
	datab => \ALT_INV_IN2~input_o\,
	datac => \ALT_INV_IN3~input_o\,
	combout => \saida1~0_combout\);

\saida2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida2~0_combout\ = (!\IN3~input_o\ & (!\IN1~input_o\ $ (!\IN2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1~input_o\,
	datab => \ALT_INV_IN2~input_o\,
	datac => \ALT_INV_IN3~input_o\,
	combout => \saida2~0_combout\);

\saida2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida2~1_combout\ = !\IN1~input_o\ $ (!\IN2~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1~input_o\,
	datab => \ALT_INV_IN2~input_o\,
	combout => \saida2~1_combout\);

ww_saida1 <= \saida1~output_o\;

ww_saida2 <= \saida2~output_o\;

ww_saida3 <= \saida3~output_o\;
END structure;


