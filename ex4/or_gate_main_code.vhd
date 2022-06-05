LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------Main code:------------------------------
ENTITY or_gate IS
 
GENERIC (N: POSITIVE := 63);
PORT (a1,b1: IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  c1: OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0));
		  
END or_gate;
--------------------------------------------------
ARCHITECTURE or_struct OF or_gate IS
--------------------------------------------------
COMPONENT or_comp IS
 
GENERIC (inputs: POSITIVE);
PORT (a,b: IN STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
      c: OUT STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));
END COMPONENT;
---------------------------------------------------
BEGIN
	ag: or_comp GENERIC MAP (inputs=>N) PORT MAP (a=>a1, b=>b1, c=>c1);
END or_struct ;
--------------------------------------------------