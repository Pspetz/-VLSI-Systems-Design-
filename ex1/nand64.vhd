USE IEEE.std_logic_1164.all;

ENTITY nand64 IS
	PORT (inputA  : IN bit_vector(63 downto 0);
		  inputB  : IN bit_vector(63 downto 0);
		  outputC : OUT bit_vector(63 downto 0));
END nand64;

ARCHITECTURE structural OF nand64 IS
	
begin

		outputC <= (not inputA) or  (not inputB) ;
	
END structural;
