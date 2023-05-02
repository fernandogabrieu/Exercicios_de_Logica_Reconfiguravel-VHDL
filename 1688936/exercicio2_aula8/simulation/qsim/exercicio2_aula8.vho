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

-- DATE "04/05/2023 18:28:29"

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

ENTITY 	exercicio2_aula8 IS
    PORT (
	d : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	q_guarded : OUT std_logic;
	q : OUT std_logic
	);
END exercicio2_aula8;

ARCHITECTURE structure OF exercicio2_aula8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_q_guarded : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL \q_guarded~output_o\ : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \q_guarded~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \q_guarded$latch~combout\ : std_logic;

BEGIN

ww_d <= d;
ww_clk <= clk;
ww_rst <= rst;
q_guarded <= ww_q_guarded;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\q_guarded~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_guarded$latch~combout\,
	devoe => ww_devoe,
	o => \q_guarded~output_o\);

\q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d~input_o\,
	devoe => ww_devoe,
	o => \q~output_o\);

\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\q_guarded~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_guarded~0_combout\ = (\d~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datad => \rst~input_o\,
	combout => \q_guarded~0_combout\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\q_guarded$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_guarded$latch~combout\ = (\clk~input_o\ & (\q_guarded~0_combout\)) # (!\clk~input_o\ & ((\q_guarded$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_guarded~0_combout\,
	datac => \q_guarded$latch~combout\,
	datad => \clk~input_o\,
	combout => \q_guarded$latch~combout\);

ww_q_guarded <= \q_guarded~output_o\;

ww_q <= \q~output_o\;
END structure;


