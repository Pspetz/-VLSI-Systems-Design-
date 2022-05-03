-----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------
ENTITY second_mux IS
	PORT (a,b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		  sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  x: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END second_mux;
-----------------------------------------------------------
ARCHITECTURE ifelse OF second_mux IS
	BEGIN
	PROCESS(a,b,sel)
		BEGIN 
		IF (sel="00") THEN x <= "00000000";
		ELSIF (sel="01") THEN x <= a;		
		ELSIF (sel="10") THEN x <= b;
		ELSIF (sel= "11") THEN x <= "ZZZZZZZZ";
		END IF;
	end process;
END ifelse;
-----------------------------------------------------------