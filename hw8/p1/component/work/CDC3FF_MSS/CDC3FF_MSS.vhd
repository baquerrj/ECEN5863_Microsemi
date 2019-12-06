----------------------------------------------------------------------
-- Created by SmartDesign Sun Nov 10 14:13:31 2019
-- Version: v11.8 11.8.0.26
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion;
use smartfusion.all;
----------------------------------------------------------------------
-- CDC3FF_MSS entity declaration
----------------------------------------------------------------------
entity CDC3FF_MSS is
    -- Port list
    port(
        -- Inputs
        reset : in  std_logic;
        -- Outputs
        Dout  : out std_logic
        );
end CDC3FF_MSS;
----------------------------------------------------------------------
-- CDC3FF_MSS architecture body
----------------------------------------------------------------------
architecture RTL of CDC3FF_MSS is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CDC3FF
-- using entity instantiation for component CDC3FF
-- clk_source_MSS
component clk_source_MSS
    -- Port list
    port(
        -- Outputs
        FAB_CLK : out std_logic;
        GLB     : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal clk_source_MSS_0_FAB_CLK : std_logic;
signal clk_source_MSS_0_GLB     : std_logic;
signal Dout_net_0               : std_logic;
signal Dout_net_1               : std_logic;

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 Dout_net_1 <= Dout_net_0;
 Dout       <= Dout_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CDC3FF_0
CDC3FF_0 : entity work.CDC3FF
    port map( 
        -- Inputs
        Aclk  => clk_source_MSS_0_FAB_CLK,
        Bclk  => clk_source_MSS_0_GLB,
        reset => reset,
        -- Outputs
        Dout  => Dout_net_0 
        );
-- clk_source_MSS_0
clk_source_MSS_0 : clk_source_MSS
    port map( 
        -- Outputs
        GLB     => clk_source_MSS_0_GLB,
        FAB_CLK => clk_source_MSS_0_FAB_CLK 
        );

end RTL;
