----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Sun Nov 10 17:00:46 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: CDC3FF_tb.vhd
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

entity CDC3FF_tb is
end CDC3FF_tb;

architecture behavioral of CDC3FF_tb is
   -- clock periods
   constant ACLK_PERIOD : time := 20 ns; -- 50 MHZ
   constant BCLK_PERIOD : time := 36.1 ns; -- 27.7 MHz
   -- clock signals
   signal ACLK : std_logic := '0';
   signal BCLK : std_logic := '0';
   -- reset
   signal NSYSRESET : std_logic := '0';
   
   signal dataA : std_logic := '0';
   signal Dout  : std_logic := '0';

begin
   initial : process
   begin
      -- Assert Reset
      NSYSRESET <= '0';
      wait for ( ACLK_PERIOD * 100 );      
      NSYSRESET <= '1';
      wait;
   end process initial;

    -- Clock Driver
    ACLK <= not ACLK after (ACLK_PERIOD / 2.0 );
    BCLK <= not BCLK after (BCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  CDC3FF
    CDC3FF_0 : CDC3FF
        -- port map
        port map( 
            -- Inputs
            Aclk => ACLK,
            Bclk => BCLK,
            reset => NSYSRESET,
            -- Outputs
            Dout =>  Dout
        );

end behavioral;

