LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VHDL_Exemplo1 IS
		 PORT (IN1 : IN std_logic;
				 IN2 : IN std_logic;
				 IN3 : IN std_logic;
		 SAIDA1 : OUT std_logic;
		 SAIDA2 : OUT std_logic);
END VHDL_Exemplo1;

ARCHITECTURE logica OF VHDL_Exemplo1 IS
BEGIN
	SAIDA1 <= (IN1 AND IN2) OR IN3;
	SAIDA2 <= (IN1 XOR IN2) AND (NOT IN3);
END logica;