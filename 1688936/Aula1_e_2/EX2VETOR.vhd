LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY EX2VETOR IS
		 PORT (A : IN  std_logic_vector(0 to 1);
				 X : OUT std_logic_vector(0 to 1));
END EX2VETOR;

ARCHITECTURE logica OF EX2VETOR IS
BEGIN
	X <= A;
END logica;