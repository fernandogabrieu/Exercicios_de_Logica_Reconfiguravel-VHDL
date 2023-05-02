LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio1_aula8 IS
	PORT(d, clk , rst	 	  : IN  std_logic;
		  q_sinc,  q_assinc : OUT std_logic);
END ENTITY;

ARCHITECTURE logic OF exercicio1_aula8 IS
BEGIN
	bloco1: BLOCK (clk'event AND clk = '1')
	BEGIN
		q_sinc   <= GUARDED '0' WHEN rst = '1' ELSE d;
		q_assinc <= d;
	END BLOCK bloco1;
END ARCHITECTURE;