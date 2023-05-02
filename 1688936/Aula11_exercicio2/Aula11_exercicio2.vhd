LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Aula11_exercicio2 IS
	PORT(d, clk, rst : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		  q 			  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY;

ARCHITECTURE logic OF Aula11_exercicio2 IS
BEGIN
	PROCESS(clk, rst)
	BEGIN
		FOR i IN 0 TO 2 LOOP
			IF (rst(i) = '1') THEN
				q(i) <= '0';
			ELSIF(clk'EVENT AND clk(i) = '1') THEN
				q(i) <= d(i);
			END IF;
		END LOOP;
	END PROCESS;
END ARCHITECTURE;