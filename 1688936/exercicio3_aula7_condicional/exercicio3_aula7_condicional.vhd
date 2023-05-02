LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio3_aula7_condicional IS 
	PORT(B : IN bit_vector (3 downto 0);
		  G : OUT bit_vector (3 downto 0));
END ENTITY;

ARCHITECTURE condicional OF exercicio3_aula7_condicional IS
BEGIN
	
	GEN: FOR i IN 0 TO 3 GENERATE
		
		label1: IF i = 3 GENERATE
			G(i) <= B(i);
		END GENERATE label1;
		
		label2: IF i /= 3 GENERATE
			G(i) <= B(i) XOR B(i+1);
		END GENERATE label2;
		
		
	END GENERATE GEN;
	
	
END ARCHITECTURE;