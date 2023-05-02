LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY WORK;
USE WORK.componentes_circuito.ALL;

ENTITY Aula13_exercicio1 IS
	PORT(a, b, c, d : IN  STD_LOGIC;
		  x, y 		 : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE logic OF Aula13_exercicio1 IS
	SIGNAL w : STD_LOGIC;
BEGIN
	U1 : porta_nand		PORT MAP(a, b, x);
	U2 : porta_inversora PORT MAP(b, w);
	U3 : porta_nand_3in  PORT MAP(w, c, d, y);
END;