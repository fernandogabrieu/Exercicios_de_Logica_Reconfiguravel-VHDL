LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Aula2_Exercicio1 IS
		 PORT (A : IN std_logic;
				 B : IN std_logic;
			  CIN : IN std_logic;
			  SUM : OUT std_logic;
		    COUT : OUT std_logic);
END Aula2_Exercicio1;

ARCHITECTURE logica OF Aula2_Exercicio1 IS
BEGIN
	SUM  <= CIN XOR (A XOR B);
	COUT <= (CIN AND (A XOR B)) OR (A AND B);
END logica;