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

    constant SYSCLK_PERIOD : time := 10 ns; -- 100MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
    signal Dout : std_logic;

    component CDC3FF_MSS
        -- ports
        port( 
            -- Inputs
            reset : in std_logic;

            -- Outputs
            Dout : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            -- Assert Reset
            NSYSRESET <= '0';
            wait for ( SYSCLK_PERIOD * 200 );
            
            NSYSRESET <= '1';
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  CDC3FF_MSS
    CDC3FF_MSS_0 : CDC3FF_MSS
        -- port map
        port map( 
            -- Inputs
            reset => NSYSRESET,

            -- Outputs
            Dout =>  Dout

            -- Inouts

        );

end behavioral;

