LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY teste123 IS
	PORT(IN1 	: IN std_logic;
		  IN2 	: IN std_logic;
		  IN3 	: IN std_logic;
		  saida1 : OUT std_logic;
		  saida2 : OUT std_logic;
		  saida3 : OUT std_logic);
END teste123;

ARCHITECTURE logica OF teste123 IS
	SIGNAL aux : std_logic;
BEGIN
	saida1 <= (IN1 AND IN2) OR (IN3);
	saida2 <= (IN1 XOR IN2) AND NOT (IN3);
	aux <= (IN1 XOR IN2);
	saida3 <= aux;
END logica;