LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Aula9_exercicio1 IS
	PORT(d, clk, rst : IN  std_logic;
		  q 			  : OUT std_logic);
END ENTITY;

ARCHITECTURE fliflop_D OF Aula9_exercicio1 IS
BEGIN

	PROCESS(clk, rst)
	BEGIN
		IF(rst = '1') THEN
			q <= '0';
		ELSIF (clk'EVENT AND clk = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
	
END ARCHITECTURE;