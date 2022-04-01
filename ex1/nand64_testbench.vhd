 
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
