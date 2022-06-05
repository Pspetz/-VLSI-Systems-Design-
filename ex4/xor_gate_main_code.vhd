LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------Main code:------------------------------
ENTITY xor_gate IS
 
GENERIC (N: POSITIVE := 16);
PORT (a1,b1: IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  c1: OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0));
		  
END xor_gate;
--------------------------------------------------
ARCHITECTURE xor_struct OF xor_gate IS
--------------------------------------------------
COMPONENT xor_comp IS
 
GENERIC (inputs: POSITIVE);
PORT (a,b: IN STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
      c: OUT STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));
END COMPONENT;
---------------------------------------------------
BEGIN
	ag: xor_comp GENERIC MAP (inputs=>N) PORT MAP (a=>a1, b=>b1, c=>c1);
END xor_struct ;
--------------------------------------------------