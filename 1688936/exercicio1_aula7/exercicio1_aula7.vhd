LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio1_aula7 IS
PORT (D: IN std_logic_vector(0 to 5);
		Y: OUT std_logic);
END ENTITY;

ARCHITECTURE funcao OF exercicio1_aula7 IS
	SIGNAL aux: std_logic_vector(0 to 3);
BEGIN
	aux(0) <= (D(0) AND D(1)) OR (D(1) AND D(2));
	
	GEN: FOR i IN 1 TO 3 GENERATE
		aux(i) <= aux(i-1) OR D(i+2);	
	END GENERATE GEN;
	
	Y <= aux(3);
	
END funcao;