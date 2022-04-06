----------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
----------------------------------------------------
ENTITY xor_with_and IS

	PORT (inputA, inputB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	      out_and : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	      out_xor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
		  
END xor_with_and;
----------------------------------------------------
ARCHITECTURE schematic OF xor_with_and IS

BEGIN
	out_and <= inputA AND inputB;
	out_xor <= inputA XOR inputB;
	
END schematic ;
----------------------------------------------------
