LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY porta_inversora IS
	PORT(a : IN  STD_LOGIC;
		  b : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE logic OF porta_inversora IS
BEGIN
	b <= NOT a; 
END;