library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NAND64 is
end NAND64;

-- CARRY EKSOUDOU = ((A XOR B) AND Cin) or (A AND B)
-- SUM EKSODOU = (A XOR B) XOR C 
architecture Behavioral of NAND64 is

COMPONENT full_adder_vhdl_code
 PORT(
 A : IN std_logic;
 B : IN std_logic;
 Cin : IN std_logic;
 Sum : OUT std_logic;
 Cout : OUT std_logic
 );
 END COMPONENT;
signal A : std_logic := '0';
signal B : std_logic := '0';
signal Cin : std_logic := '0';
signal Sum : std_logic :='0';
signal Cout : std_logic := '0';
 
BEGIN

uut: full_adder_vhdl_code PORT MAP (
 A => A,
 B => B,
 Cin => Cin,
 Sum => Sum,
 Cout => Cout
 );

stim_proc: process
 begin

 wait for 100 ns;
 

 A <= '0';
 B <= '0';
 Cin <= '0';
 Sum <= '0';
 Cout <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '0';
 Cin <= '1';
 Sum <= '1';
 Cout <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 Cin <= '0';
  Sum <= '1';
 Cout <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 Cin <= '1';
 Sum <= '0';
 Cout <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '0';
 Cin <= '0';
 Sum <= '1';
 Cout <= '0';
 wait for 10 ns;
 
 A <= '1';
 B <= '0';
 Cin <= '1';
 Sum <= '0';
 Cout <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 Cin <= '0';
 Sum <= '0';
 Cout <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 Cin <= '1';
 Sum <= '1';
 Cout <= '1';
 wait for 10 ns;
 
 end process;


end Behavioral;
