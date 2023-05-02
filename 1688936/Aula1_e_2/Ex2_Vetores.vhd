LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ExercicioComVetoresDaAula2 IS
		 PORT (A : IN  std_logic_vector(0 to 1);
				 X : OUT std_logic_vector(0 to 1));
END ExercicioComVetoresDaAula2;

ARCHITECTURE logica OF ExercicioComVetoresDaAula2 IS
BEGIN
	X <= A;
END logica;