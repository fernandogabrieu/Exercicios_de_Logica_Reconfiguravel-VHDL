LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Aula12_Exercicio3 IS
	PORT(clk  : IN  STD_LOGIC; -- sys_clk_50mhz
		  led  : OUT STD_LOGIC;
		  led1 : OUT STD_LOGIC := '1');
END ENTITY;

ARCHITECTURE logic OF Aula12_Exercicio3 IS
BEGIN
	PROCESS(clk)
		VARIABLE contador  : NATURAL RANGE 0 TO 10000; -- 50mhz / 5khz = 10.000 ciclos
		VARIABLE nivel_led : STD_LOGIC := '1';
	BEGIN
		led <= nivel_led;
		IF(clk'EVENT AND clk = '1') THEN
			contador := contador + 1;
			IF(contador >= 9000) THEN 
				nivel_led := '1';
				IF(contador = 10000) THEN --duty cicle 10% → 1000 ciclos
						nivel_led := '0';
						contador := 0;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END;