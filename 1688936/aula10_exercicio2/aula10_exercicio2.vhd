LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY aula10_exercicio2 IS
	PORT(KEY   : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
		  HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6));	
END ENTITY;

ARCHITECTURE dec_bcd OF aula10_exercicio2 IS
BEGIN
	PROCESS(KEY)
		VARIABLE X : INTEGER RANGE 0 TO 15 := 0; 
	BEGIN
		IF(KEY(0) = '1' AND KEY(0)'EVENT) THEN
			X := X + 1;
			CASE X IS
				WHEN 0 => HEX0 <= "0000001"; --0
				WHEN 1 => HEX0 <= "1001111"; --1
				WHEN 2 => HEX0 <= "0010010"; --2
				WHEN 3 => HEX0 <= "0000110"; --3
				WHEN 4 => HEX0 <= "1001100"; --4
				WHEN 5 => HEX0 <= "0100100"; --5
				WHEN 6 => HEX0 <= "0100000"; --6
				WHEN 7 => HEX0 <= "0001111"; --7
				WHEN 8 => HEX0 <= "0000000"; --8
				WHEN 9 => HEX0 <= "0000100"; --9
				WHEN OTHERS => HEX0 <= "0110000"; --E
			END CASE;
		END IF;
	END PROCESS;
END ARCHITECTURE;