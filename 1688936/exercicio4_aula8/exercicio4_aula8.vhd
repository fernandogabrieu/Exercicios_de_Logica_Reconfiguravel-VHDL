LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio4_aula8 IS
	PORT(A, B, en, T	  : IN  std_logic;
		  SUM, CARRY_OUT : OUT std_logic);
END ENTITY;

ARCHITECTURE logic OF exercicio4_aula8 IS
BEGIN
	
	bloco1: BLOCK (en = '1')
	BEGIN
		SUM 	    <= GUARDED (A XOR B) WHEN T = '1' ELSE 'Z';
		CARRY_OUT <= GUARDED (A AND B) WHEN T = '1' ELSE 'Z';
	END BLOCK bloco1;
	
END ARCHITECTURE;
