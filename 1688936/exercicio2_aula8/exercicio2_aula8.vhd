LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio2_aula8 IS
	PORT(d, clk , rst	 	  : IN  std_logic;
		  q_guarded,  q : OUT std_logic);
END ENTITY;

ARCHITECTURE logic OF exercicio2_aula8 IS
BEGIN
	bloco1: BLOCK (clk = '1')
	BEGIN
		q_guarded <= GUARDED '0' WHEN rst = '1' ELSE d;
		q <= d;
	END BLOCK bloco1;
END ARCHITECTURE;