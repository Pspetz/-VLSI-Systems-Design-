----------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
----------------------------------------------------

ENTITY xor_with_and_reg IS PORT(
    inputA,inputB  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ld  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    register_and ,register_xor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); -- output.

END xor_with_and_reg;

ARCHITECTURE description OF xor_with_and_reg IS

SIGNAL out_and, out_xor: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
    out_and <= inputA AND inputB;
    out_xor <= inputA XOR inputB;
    process(clk, clr)
    begin
        if (clr ='1') then
            register_and <= "00000000";
            register_xor <= "00000000";
        elsif (clk'EVENT AND clk='1') THEN 
            if(ld = '1') THEN
            register_and <= out_and;
            register_xor <= out_xor;
            end if;
            END IF;
    end process;
END description;
