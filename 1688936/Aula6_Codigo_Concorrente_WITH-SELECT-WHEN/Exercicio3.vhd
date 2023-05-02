LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercicio3 IS
	PORT(a		: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		  En		: IN  STD_LOGIC;
		  saida 	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE with_SELECT3 OF Exercicio3 IS

	SIGNAL x: std_logic_vector(3 DOWNTO 0);
	
BEGIN 

	WITH a SELECT
	x <= "1000" when "00",
		  "0100" when "01",
		  "0010" when "10",
		  "0001" when "11";
		  
	WITH En SELECT
	saida <= x 		 when '1',
				"0000" when '0';
	
END ARCHITECTURE;
		  
		 