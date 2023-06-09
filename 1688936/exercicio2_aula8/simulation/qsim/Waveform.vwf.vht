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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/05/2023 18:28:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio2_aula8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio2_aula8_vhd_vec_tst IS
END exercicio2_aula8_vhd_vec_tst;
ARCHITECTURE exercicio2_aula8_arch OF exercicio2_aula8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL q_guarded : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT exercicio2_aula8
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	q_guarded : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercicio2_aula8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	q_guarded => q_guarded,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clk <= '0';
		WAIT FOR 160000 ps;
		clk <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- d
t_prcs_d: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		d <= '0';
		WAIT FOR 80000 ps;
		d <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 560000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END exercicio2_aula8_arch;
