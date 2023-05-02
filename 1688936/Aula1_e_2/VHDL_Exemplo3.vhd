LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VHDL_Exemplo3 IS
	PORT (IN3 : IN std_logic;
			IN4 : IN std_logic;
			IN1 : IN std_logic;
			IN2 : IN std_logic;
	  SAIDA : OUT std_logic);
END VHDL_Exemplo3;

ARCHITECTURE logica OF VHDL_Exemplo3 IS 
BEGIN
	SAIDA <= NOT ((IN3 AND IN4) OR (IN1 AND IN2));
END logica;
			