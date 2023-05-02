LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio2_aula7 IS
	PORT(ENTRADA : IN bit_vector(0 TO 3);
			 SAIDA : OUT bit_vector(0 TO 3));
END ENTITY;

ARCHITECTURE gen_cond OF exercicio2_aula7 IS
BEGIN
	GEN: FOR i IN 0 TO 3 GENERATE
		label1: IF i = 0 GENERATE
					SAIDA(i) <= '0';
		END GENERATE label1;
		
		label2: IF i /= 0 GENERATE
					SAIDA(i) <= ENTRADA(i);
		END GENERATE label2;
	END GENERATE GEN;
END ARCHITECTURE;