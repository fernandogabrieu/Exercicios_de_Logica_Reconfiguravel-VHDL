LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio1aula4 IS
	PORT(IN1 	: IN std_logic;
		  IN2 	: IN std_logic;
		  IN3 	: IN std_logic;
		  saida1 : OUT std_logic;
		  saida2 : OUT std_logic);
END exercicio1aula4;

ARCHITECTURE exemplo OF exercicio1aula4 IS
	SIGNAL saida3 : std_logic;
BEGIN
	saida1 <= (IN1 AND IN2) OR (IN3);
	saida2 <= (IN1 XOR IN2) AND NOT (IN3);
	saida3 <= (IN1 XOR IN2);
END exemplo;