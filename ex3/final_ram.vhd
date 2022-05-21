LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.all;      
USE IEEE.NUMERIC_STD.ALL;  
USE IEEE.std_logic_arith.all;     

----------------------------------------------------------
ENTITY Ram IS 

PORT (
      Address:IN std_logic_vector(4 downto 0);       -- 00000 to 11111
	  Input_data: IN std_logic_vector(31 downto 0); --32 eisodou 
	  Read_data,Write_Data,Reset : IN std_logic ;
	  clk : IN std_logic;
	  Output_data: OUT std_logic_vector(31 downto 0) --32 eksodou
	);


END Ram;                     


---------------------------------------------------------

ARCHITECTURE Behavioral OF Ram IS 

 TYPE blocks IS ARRAY(0 TO 31) OF std_logic_vector(31 DOWNTO 0);

 SIGNAL ram_block : blocks; 


BEGIN 

    process(clk)
    Begin

        IF (clk'event AND clk = '1') THEN 

	       IF Write_Data='1' THEN 
	           ram_block(conv_integer(Address))<=Input_data; --convert adress value to integer

	       ELSIF Reset = '1' THEN
		      ram_block  <= (others => (others => '0'));
		      Output_data <= (others => '0');

	       ELSE 
		      Output_data <= ram_block(conv_integer(Address));

	       END if;
        END if;
    end process;


END;