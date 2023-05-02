LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Aula9_exercicio3 IS 
	PORT(clk  : IN STD_LOGIC;
		  a, b : IN INTEGER RANGE 0 TO 7;
		  reg_comp : OUT STD_LOGIC;
		  reg_sum  : OUT INTEGER RANGE 0 TO 15);
END ENTITY;

ARCHITECTURE sum_comp_reg OF Aula9_exercicio3 IS
	SIGNAL comp : STD_LOGIC;
	SIGNAL sum  : INTEGER RANGE 0 TO 7;
BEGIN
	comp <= '1' WHEN a > b ELSE '0';
	sum  <=  a + b;
	
	PROCESS(clk)
	BEGIN
		IF(clk'event AND clk = '1') THEN
			reg_sum  <= sum;
			reg_comp <= comp;	
		END IF;
	END PROCESS;
	
END ARCHITECTURE;
