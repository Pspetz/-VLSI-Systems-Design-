------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------------------------------------
ENTITY and_gate IS

GENERIC (inputs: POSITIVE:=16); 
PORT (a, b: IN  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
	     c: OUT  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));

END and_gate;
------------------------------------------------------------
ARCHITECTURE and_gate_arch OF and_gate IS

BEGIN
XLoop: For i IN 0 TO inputs-1 Generate
		c(i) <= a(i) AND b(i);
	End Generate XLoop;

END and_gate_arch;
--------------------------------------------------


------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------------------------------------
ENTITY nand_gate IS

GENERIC (inputs: POSITIVE:=8); 
PORT (a, b: IN  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
	     c: OUT  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));

END nand_gate;
------------------------------------------------------------
ARCHITECTURE nand_gate_arch OF nand_gate IS

BEGIN
XLoop: For i IN 0 TO inputs-1 Generate
		c(i) <= a(i) NAND b(i);
	End Generate XLoop;

END nand_gate_arch;
--------------------

------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------------------------------------
ENTITY or_gate IS

GENERIC (inputs: POSITIVE:=32); 
PORT (a, b: IN  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
	     c: OUT  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));

END or_gate;
------------------------------------------------------------
ARCHITECTURE or_gate_arch OF or_gate IS

BEGIN
XLoop: For i IN 0 TO inputs-1 Generate
		c(i) <= a(i) OR b(i);
	End Generate XLoop;

END or_gate_arch;
-----------------------------------

------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------------------------------------
ENTITY xor_gate IS

GENERIC (inputs: POSITIVE:=64); 
PORT (a, b: IN  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0);
	     c: OUT  STD_LOGIC_VECTOR(inputs-1 DOWNTO 0));

END xor_gate;
------------------------------------------------------------
ARCHITECTURE xor_gate_arch OF xor_gate IS

BEGIN
XLoop: For i IN 0 TO inputs-1 Generate
		c(i) <= a(i) XOR b(i);
	End Generate XLoop;

END xor_gate_arch;
--------------------------------------------------



library ieee;				-- top level circuit
use ieee.std_logic_1164.all;
use work.all;

entity b_enotita is 
GENERIC (N: POSITIVE := 120;
k: POSITIVE:=8;
L: POSITIVE:=16;
P: POSITIVE:=32;
Q: POSITIVE:=64);
PORT (A,B: IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		  C: OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0));
end b_enotita;

architecture structural of b_enotita is

    component nand_gate is		
    port(   a:	IN  STD_LOGIC_VECTOR(k-1 DOWNTO 0);
    	    b:	IN  STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	  
           c:	out  STD_LOGIC_VECTOR(k-1 DOWNTO 0)     
    );
    end component;
    
    component and_gate is		
    port(   a:	IN  STD_LOGIC_VECTOR(L-1 DOWNTO 0);
    	    b:IN  STD_LOGIC_VECTOR(L-1 DOWNTO 0);
            c:	out  STD_LOGIC_VECTOR(L-1 DOWNTO 0)
	      
    );
    end component;

    component or_gate is		
    port(   a:	IN  STD_LOGIC_VECTOR(P-1 DOWNTO 0);
    	    b: IN  STD_LOGIC_VECTOR(P-1 DOWNTO 0);
            c:	out  STD_LOGIC_VECTOR(P-1 DOWNTO 0)
    );
    end component;
    
    component xor_gate is		
    port(  a:	IN  STD_LOGIC_VECTOR(Q-1 DOWNTO 0);
    	   b:  IN  STD_LOGIC_VECTOR(Q-1 DOWNTO 0);
            c:	out  STD_LOGIC_VECTOR(Q-1 DOWNTO 0)
    );
    end component;

    
    
begin

    NANDGATE: nand_gate port map (a => A(k-1 DOWNTO 0), b =>  B(k-1 DOWNTO 0), c => C(k-1 DOWNTO 0)) ;
    ANDGATE: and_gate port map (a => A(L+k-1 DOWNTO k), b =>  B(L+k-1 DOWNTO k), c => C(L+k-1 DOWNTO k)) ;
    ORGATE: or_gate port map (a => A(P+L+k-1 DOWNTO k+L), b =>  B(P+L+k-1 DOWNTO k+L), c => C(P+L+k-1 DOWNTO k+L)) ;
    XORGATE: xor_gate port map (a => A(N-1 DOWNTO P+L+k), b =>  B(N-1 DOWNTO P+L+k), c => C(N-1 DOWNTO P+L+k)) ;

end structural;