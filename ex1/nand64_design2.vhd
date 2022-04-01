library IEEE;
USE IEEE.std_logic_1164.all;

ENTITY nand64 IS
	PORT (inputA  : IN std_logic_vector(63 downto 0);
		  inputB  : IN std_logic_vector(63 downto 0);
		  outputC : OUT std_logic_vector(63 downto 0));
END nand64;

ARCHITECTURE structural OF nand64 IS
	
BEGIN

	XORLoop: For i IN 0 TO 63 Generate
		outputC(i) <= (not inputA(i)) or  (not inputB(i)) ;
	End Generate XORLoop;
	
END structural;
