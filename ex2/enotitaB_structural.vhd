library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------XRISI PILWN------------------------------
entity EnotitaB is
port(A,B,C:in std_logic;
	Z: OUT std_logic);
end EnotitaB;
---------------------------------------------------
architecture structural of EnotitaB_process is
begin
	 
Z <= (A AND B) OR C; 
		
end structural;
