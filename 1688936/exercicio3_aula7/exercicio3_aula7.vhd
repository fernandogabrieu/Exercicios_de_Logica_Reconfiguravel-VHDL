LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio3_aula7 IS 
	PORT(B : IN bit_vector (3 downto 0);
		  G : OUT bit_vector (3 downto 0));
END ENTITY;

ARCHITECTURE incondicional OF exercicio3_aula7 IS
BEGIN

	G(3) <= B(3);
	
	GEN: FOR i IN 0 TO 2 GENERATE
		G(i) <= B(i) XOR B(i+1);
	END GENERATE GEN;
	
END ARCHITECTURE;