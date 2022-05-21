library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM_wrapper is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC;
    BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end BRAM_wrapper;

architecture STRUCTURE of BRAM_wrapper is
  component BRAM is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC;
    BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BRAM;
begin
BRAM_i: component BRAM
     port map (
      BRAM_PORTA_0_addr(4 downto 0) => BRAM_PORTA_0_addr(4 downto 0),
      BRAM_PORTA_0_clk => BRAM_PORTA_0_clk,
      BRAM_PORTA_0_din(7 downto 0) => BRAM_PORTA_0_din(7 downto 0),
      BRAM_PORTA_0_dout(7 downto 0) => BRAM_PORTA_0_dout(7 downto 0),
      BRAM_PORTA_0_en => BRAM_PORTA_0_en,
      BRAM_PORTA_0_we(0) => BRAM_PORTA_0_we(0)
    );
end STRUCTURE;
