LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Aula9_exercicio4 IS
	PORT(clk, Serial 	  : IN  	  STD_LOGIC;
		  Q				  : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE reg_desloc OF Aula9_exercicio4 IS
BEGIN
	
	PROCESS(clk)
	BEGIN
		IF(clk'event AND clk = '1') THEN
			Q(0) <= Q(1);
			Q(1) <= Q(2);
			Q(2) <= Q(3);
			Q(3) <= Serial;
		END IF;
	END PROCESS;
	
	
END ARCHITECTURE;
