LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercicio1 IS
	PORT(sel 			  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		  y 				  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END ENTITY;

ARCHITECTURE with_SELECT1 OF Exercicio1 IS
BEGIN
	WITH sel SELECT
	y <= "11000000" when "11",
		  "00110000" when "10",
		  "00001100" when "01",
		  "00000011" when "00",
		  "00000011" when OTHERS;
END ARCHITECTURE;
		  
		 