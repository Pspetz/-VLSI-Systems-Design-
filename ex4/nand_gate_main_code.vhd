LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------Main code:------------------------------
ENTITY nand_gate IS
 
GENERIC (N: POSITIVE := 32);
PORT (a1,b1: IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  c1: OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0));
		  
END nand_gate;
--------------------------------------------------
ARCHITECTURE nand_struct OF nand_gate IS
--------------------------------------------------
COMPONENT nand_comp IS
 
GENERIC (inputs: POSITIVE);
PORT (a,b: IN STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
      c: OUT STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));
END COMPONENT;
---------------------------------------------------
BEGIN
	ag: nand_comp GENERIC MAP (inputs=>N) PORT MAP (a=>a1, b=>b1, c=>c1);
END nand_struct ;
--------------------------------------------------