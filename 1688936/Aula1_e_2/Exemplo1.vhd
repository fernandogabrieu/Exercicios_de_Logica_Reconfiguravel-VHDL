LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exemplo1 IS
		 PORT (IN1 : IN std_logic;
				 IN2 : IN std_logic;
		 SAIDA : OUT std_logic);
END Exemplo1;

ARCHITECTURE logica OF Exemplo1 IS
BEGIN
	SAIDA <= IN1 AND IN2;
END logica;