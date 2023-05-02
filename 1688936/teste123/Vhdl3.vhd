LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY vhdl3 IS
	GENERIC(N: INTEGER := 7);
	PORT(A : IN std_logic_vector (0 TO N-1);
		  B : OUT std_logic_vector(0 TO A'LENGTH);
		  C : OUT INTEGER range 0 to N-1);
END ENTITY;

ARCHITECTURE gg OF vhdl3 IS 
BEGIN
		B <= (0 => '1', N-1 => '1', OTHERS => '0');
		C <= A'LENGTH; 
END gg;