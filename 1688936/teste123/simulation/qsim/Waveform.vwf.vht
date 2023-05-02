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
-- Generated on "03/16/2023 15:48:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          teste123
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY teste123_vhd_vec_tst IS
END teste123_vhd_vec_tst;
ARCHITECTURE teste123_arch OF teste123_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL IN1 : STD_LOGIC;
SIGNAL IN2 : STD_LOGIC;
SIGNAL IN3 : STD_LOGIC;
SIGNAL saida1 : STD_LOGIC;
SIGNAL saida2 : STD_LOGIC;
SIGNAL saida3 : STD_LOGIC;
COMPONENT teste123
	PORT (
	IN1 : IN STD_LOGIC;
	IN2 : IN STD_LOGIC;
	IN3 : IN STD_LOGIC;
	saida1 : OUT STD_LOGIC;
	saida2 : OUT STD_LOGIC;
	saida3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : teste123
	PORT MAP (
-- list connections between master ports and signals
	IN1 => IN1,
	IN2 => IN2,
	IN3 => IN3,
	saida1 => saida1,
	saida2 => saida2,
	saida3 => saida3
	);

-- IN1
t_prcs_IN1: PROCESS
BEGIN
LOOP
	IN1 <= '0';
	WAIT FOR 50000 ps;
	IN1 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_IN1;

-- IN2
t_prcs_IN2: PROCESS
BEGIN
	IN2 <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 4
	LOOP
		IN2 <= '0';
		WAIT FOR 100000 ps;
		IN2 <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	IN2 <= '0';
WAIT;
END PROCESS t_prcs_IN2;

-- IN3
t_prcs_IN3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		IN3 <= '0';
		WAIT FOR 150000 ps;
		IN3 <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	IN3 <= '0';
WAIT;
END PROCESS t_prcs_IN3;
END teste123_arch;
