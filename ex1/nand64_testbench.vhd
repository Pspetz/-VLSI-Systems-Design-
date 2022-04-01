library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NAND64 is
end NAND64;

-- CARRY EKSOUDOU = ((A XOR B) AND Cin) or (A AND B)
-- SUM EKSODOU = (A XOR B) XOR C 
architecture Behavioral of NAND64 is

COMPONENT NAND64
 PORT(
 A : IN std_logic;
 B : IN std_logic;
 C : OUT std_logic
 
 );
 END COMPONENT;
signal A : std_logic := '0';
signal B : std_logic := '0';
signal C : std_logic := '0';

 
BEGIN

uut: NAND64 PORT MAP (
 A => A,
 B => B,
 C => C
 
 );

stim_proc: process
 begin

 wait for 100 ns;
 

 A <= '1';
 B <= '0';
 C <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 C <= '0';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 C <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '0';
 C <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '0';
 C <= '1';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 C <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 C <= '1';
 wait for 10 ns;
 
 end process;


end Behavioral;
