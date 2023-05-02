LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY EX3VETOR IS
	PORT (ABCD   : IN std_logic_vector(0 to 3);
			S		 : IN std_logic_vector(0 to 1);
			SAIDA  : OUT std_logic);
END EX3VETOR;

ARCHITECTURE logica OF EX3VETOR IS 
BEGIN
	SAIDA <= (ABCD(0) AND NOT S(0) AND NOT S(1)) OR
				(ABCD(1) AND NOT S(0) AND S(1)) OR
				(ABCD(2) AND S(0) AND NOT S(1)) OR
				(ABCD(3) AND S(0) AND S(1));
END logica;