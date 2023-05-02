LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Aula12_Exercicio2 IS
	PORT(clk : IN  STD_LOGIC;
		  rst : IN  STD_LOGIC;
	     led : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE logic OF Aula12_Exercicio2 IS
BEGIN
	PROCESS(clk, rst)
		VARIABLE contador  : INTEGER RANGE 0 TO 50000000;
		VARIABLE nivel_led : STD_LOGIC := '1';
	BEGIN
		led <= nivel_led;
		IF (rst = '1') THEN
			nivel_led := '0';
		ELSIF (clk'EVENT AND clk = '1') THEN
			contador := contador + 1;
			IF (contador = 50000000) THEN
				contador := 0;
				nivel_led := '0';
			END IF;
		END IF;
	END PROCESS;
END;