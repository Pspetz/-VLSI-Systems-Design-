
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Full_adder_one_bit is
	PORT (InputA,InputB,Cin : IN std_logic;
		  Sum , Carry : OUT std_logic);
end Full_adder_one_bit;

-- CARRY EKSOUDOU = ((A XOR B) AND Cin) or (A AND B)
-- SUM EKSODOU = (A XOR B) XOR C 
architecture struct of Full_adder_one_bit is

begin

Sum <= (InputA XOR InputB) XOR Cin ;
Carry <=((InputA XOR InputB) AND Cin ) OR (InputA AND InputB);
end struct;