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
-- Generated on "04/05/2023 19:29:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio4_aula8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio4_aula8_vhd_vec_tst IS
END exercicio4_aula8_vhd_vec_tst;
ARCHITECTURE exercicio4_aula8_arch OF exercicio4_aula8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CARRY_OUT : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL SUM : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT exercicio4_aula8
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CARRY_OUT : OUT STD_LOGIC;
	en : IN STD_LOGIC;
	SUM : OUT STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercicio4_aula8
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CARRY_OUT => CARRY_OUT,
	en => en,
	SUM => SUM,
	T => T
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A <= '0';
		WAIT FOR 80000 ps;
		A <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B <= '0';
		WAIT FOR 160000 ps;
		B <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
	WAIT FOR 640000 ps;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '0';
	WAIT FOR 320000 ps;
	T <= '1';
	WAIT FOR 320000 ps;
	T <= '0';
	WAIT FOR 320000 ps;
	T <= '1';
WAIT;
END PROCESS t_prcs_T;
END exercicio4_aula8_arch;
