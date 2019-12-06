--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: PartA_tb.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
-- Author: <Name>
--
--------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity PartA_tb is
end PartA_tb;

architecture behavioral of PartA_tb is
   -- clock periods
   constant ACLK_PERIOD : time := 20 ns; -- 50 MHZ
   constant BCLK_PERIOD : time := 36.1 ns; -- 27.7 MHz
   -- clock signals
   signal ACLK : std_logic := '0';
   signal BCLK : std_logic := '0';
   -- reset
   signal NSYSRESET : std_logic := '1';
   
   signal dataA : std_logic := '0';
   signal Dout  : std_logic := '0';
    component PartA
        -- ports
        port( 
            -- Inputs
            Aclk : in std_logic;
            Bclk : in std_logic;
            CLR : in std_logic;
            -- Outputs
            Dout : out std_logic
        );
    end component;

begin
   initial : process
   begin
      wait for BCLK_PERIOD * 2;
      NSYSRESET <= '0';
      wait for ( ACLK_PERIOD * 100 );      
      NSYSRESET <= '1';
      wait;
   end process initial;

    -- Clock Driver
    ACLK <= not ACLK after (ACLK_PERIOD / 2.0 );
    BCLK <= not BCLK after (BCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  PartA
    PartA_0 : PartA
        -- port map
        port map( 
            -- Inputs
            Aclk => ACLK,
            Bclk => BCLK,
            CLR => NSYSRESET,

            -- Outputs
            Dout =>  Dout
        );

end behavioral;

