library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------XRISI PILWN------------------------------
entity EnotitaB is
port(A,B,C:in std_logic;
	Z: OUT std_logic);
end EnotitaB;
---------------------------------------------------
architecture procc of EnotitaB is

begin
	 
	Z <= '1' WHEN C ='1' ELSE
		 '1' WHEN (A AND B) ='1' ELSE '0';

end procc;
