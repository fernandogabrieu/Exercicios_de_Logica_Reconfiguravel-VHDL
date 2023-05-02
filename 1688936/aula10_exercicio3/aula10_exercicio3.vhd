LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY aula10_exercicio3 IS
	PORT(cod   : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		  A, B  : IN  INTEGER RANGE 0 TO 7;
		  saida : OUT INTEGER RANGE 0 TO 63);
	
END ENTITY;

ARCHITECTURE ULA OF aula10_exercicio3 IS
BEGIN
	PROCESS(A, B, cod)
	BEGIN
		CASE cod IS
			WHEN "00" => saida <= A + B;
			WHEN "01" => saida <= A - B;
			WHEN "10" => saida <= A * B;
			WHEN "11" => saida <= A / B;
		END CASE;
	END PROCESS;
END;