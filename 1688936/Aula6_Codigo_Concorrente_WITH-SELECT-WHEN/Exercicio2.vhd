LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercicio2 IS
	GENERIC (N: INTEGER := 8);
	PORT(A, B, C, D	  : IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  sel 			  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		  y 				  : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END ENTITY;

ARCHITECTURE with_SELECT2 OF Exercicio2 IS
BEGIN
	WITH sel SELECT
	y <= A when "11",
		  B when "10",
		  C when "01",
		  D when "00";
END ARCHITECTURE;
		  
		 