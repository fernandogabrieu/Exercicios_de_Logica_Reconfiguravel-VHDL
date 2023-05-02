LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercicio1_Aula2 IS
		 PORT (A : IN std_logic;
				 B : IN std_logic;
			  CIN : IN std_logic;
			  SUM : OUT std_logic;
		    COUT : OUT std_logic);
END Exercicio1_Aula2;

ARCHITECTURE logica OF Exercicio1_Aula2 IS
BEGIN
	SUM  <= CIN XOR (A XOR B);
	COUT <= (CIN AND (A XOR B)) OR (A AND B);
END logica;