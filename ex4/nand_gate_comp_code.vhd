------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------------------------------------
ENTITY nand_comp IS

GENERIC (inputs: POSITIVE); 
PORT (a, b: IN  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
	     c: OUT  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));

END nand_comp;
------------------------------------------------------------
ARCHITECTURE nand_gate_arch OF nand_comp IS

BEGIN
XLoop: For i IN 0 TO inputs-1 Generate
		c(i) <= a(i) NAND b(i);
	End Generate XLoop;

END nand_gate_arch;
--------------------------------------------------