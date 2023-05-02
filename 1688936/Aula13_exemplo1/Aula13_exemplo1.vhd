LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY work; --utilizar library que esta na pasta do projeto
USE work.componentes_circuito.ALL; --package componentes_circuito

ENTITY Aula13_exemplo1 IS
	PORT(a, b : IN  STD_LOGIC;
		  c	 : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE logic OF Aula13_exemplo1 IS
	SIGNAL z : STD_LOGIC;
BEGIN
	U1 : porta_inversora PORT MAP (a, z);
	U2 : porta_and		   PORT MAP (z, b, c);
END logic;