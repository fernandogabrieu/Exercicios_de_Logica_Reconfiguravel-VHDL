LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE componentes_circuito IS

-------------NOT--------------
	COMPONENT porta_inversora IS
		PORT(a : IN STD_LOGIC; b : OUT STD_LOGIC);
	END COMPONENT;
-------------AND--------------
	COMPONENT porta_and IS
		PORT(a, b : IN STD_LOGIC; c : OUT STD_LOGIC);
	END COMPONENT;
-------------NAND--------------
	COMPONENT porta_nand IS
		PORT(a, b : IN STD_LOGIC; c : OUT STD_LOGIC);
	END COMPONENT;
-------------NAND 3 IN--------------
	COMPONENT porta_nand_3in IS
		PORT(a, b, c : IN STD_LOGIC; d : OUT STD_LOGIC);
	END COMPONENT;

END componentes_circuito;
	