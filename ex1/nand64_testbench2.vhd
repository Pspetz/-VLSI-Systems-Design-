library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity testbench is
end testbench;

architecture Behavioral of testbench is
signal A :  std_logic_vector(1 downto 0) := "00";
signal B :  std_logic_vector(1 downto 0) := "01";
signal C :  std_logic_vector(1 downto 0);

COMPONENT full_adder_vhdl_code
 PORT(
 A : IN std_logic_vector(1 downto 0);
 B : IN std_logic_vector(1 downto 0);
 C:  OUT std_logic_vector(1 downto 0)
 );
 END COMPONENT;

BEGIN

uut: full_adder_vhdl_code PORT MAP (
 A => A,
 B => B,
 C => C
 );

stim_proc: process
 begin

 wait for 100 ns;
 
 IF (A <= "00" OR B<= "00") then
    C <= "01";
 ELSIF(A <="01" AND B <="01") then 
    C <= "00" ;
 end if;
 wait for 10 ns;

 end process;


end Behavioral;

