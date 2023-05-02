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

-- DATE "04/05/2023 19:29:29"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercicio4_aula8 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	en : IN std_logic;
	T : IN std_logic;
	SUM : OUT std_logic;
	CARRY_OUT : OUT std_logic
	);
END exercicio4_aula8;

ARCHITECTURE structure OF exercicio4_aula8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_SUM : std_logic;
SIGNAL ww_CARRY_OUT : std_logic;
SIGNAL \SUM~output_o\ : std_logic;
SIGNAL \CARRY_OUT~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \SUM~1_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \SUM$latch~combout\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \CARRY_OUT_24~combout\ : std_logic;
SIGNAL \CARRY_OUT~1_combout\ : std_logic;
SIGNAL \CARRY_OUT$latch~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_en <= en;
ww_T <= T;
SUM <= ww_SUM;
CARRY_OUT <= ww_CARRY_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SUM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM$latch~combout\,
	oe => \CARRY_OUT_24~combout\,
	devoe => ww_devoe,
	o => \SUM~output_o\);

\CARRY_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CARRY_OUT$latch~combout\,
	oe => \CARRY_OUT_24~combout\,
	devoe => ww_devoe,
	o => \CARRY_OUT~output_o\);

\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\SUM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM~1_combout\ = \A~input_o\ $ (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \SUM~1_combout\);

\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\SUM$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM$latch~combout\ = (\en~input_o\ & (\SUM~1_combout\)) # (!\en~input_o\ & ((\SUM$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUM~1_combout\,
	datac => \SUM$latch~combout\,
	datad => \en~input_o\,
	combout => \SUM$latch~combout\);

\T~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

CARRY_OUT_24 : cycloneive_lcell_comb
-- Equation(s):
-- \CARRY_OUT_24~combout\ = (\en~input_o\ & (\T~input_o\)) # (!\en~input_o\ & ((\CARRY_OUT_24~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T~input_o\,
	datac => \CARRY_OUT_24~combout\,
	datad => \en~input_o\,
	combout => \CARRY_OUT_24~combout\);

\CARRY_OUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CARRY_OUT~1_combout\ = (\A~input_o\ & \B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	combout => \CARRY_OUT~1_combout\);

\CARRY_OUT$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CARRY_OUT$latch~combout\ = (\en~input_o\ & (\CARRY_OUT~1_combout\)) # (!\en~input_o\ & ((\CARRY_OUT$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CARRY_OUT~1_combout\,
	datac => \CARRY_OUT$latch~combout\,
	datad => \en~input_o\,
	combout => \CARRY_OUT$latch~combout\);

ww_SUM <= \SUM~output_o\;

ww_CARRY_OUT <= \CARRY_OUT~output_o\;
END structure;


