library IEEE;
USE IEEE.std_logic_1164.all;

ENTITY nand64 IS
GENERIC (timeloop: natural := 64);
	PORT (inputA  : IN std_logic_vector(timeloop-1 downto 0);
		  inputB  : IN std_logic_vector(timeloop-1 downto 0);
		  outputC : OUT std_logic_vector(timeloop-1 downto 0));
END nand64;

ARCHITECTURE structural OF nand64 IS
	
begin

	XORLoop: For i IN 0 TO 63 Generate
				outputC(i) <= (not inputA(i)) or  (not inputB(i)) ;
	End Generate XORLoop;
		
	
END structural;
