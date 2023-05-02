LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Aula9_exercicio2 IS
	PORT(a, b, clk : IN  std_logic;
		  q 			: OUT std_logic);
END ENTITY;

ARCHITECTURE ff_D_Nand OF Aula9_exercicio2 IS
	signal x : std_logic;
BEGIN

	x <= a NAND b;
	
	PROCESS(clk)
	BEGIN
		IF(clk'event AND clk = '1') THEN
			q <= x;
		END IF;
	END PROCESS;

END ARCHITECTURE;