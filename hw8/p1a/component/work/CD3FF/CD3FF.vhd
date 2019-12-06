----------------------------------------------------------------------
-- Created by SmartDesign Sun Nov 17 19:21:38 2019
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
-- CD3FF entity declaration
----------------------------------------------------------------------
entity CD3FF is
    -- Port list
    port(
        -- Inputs
        Aclk  : in  std_logic;
        Bclk  : in  std_logic;
        Reset : in  std_logic;
        -- Outputs
        Dout  : out std_logic
        );
end CD3FF;
----------------------------------------------------------------------
-- CD3FF architecture body
----------------------------------------------------------------------
architecture RTL of CD3FF is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- DFN1C1
component DFN1C1
    -- Port list
    port(
        -- Inputs
        CLK : in  std_logic;
        CLR : in  std_logic;
        D   : in  std_logic;
        -- Outputs
        Q   : out std_logic
        );
end component;
-- INV
component INV
    -- Port list
    port(
        -- Inputs
        A : in  std_logic;
        -- Outputs
        Y : out std_logic
        );
end component;
-- MX2
component MX2
    -- Port list
    port(
        -- Inputs
        A : in  std_logic;
        B : in  std_logic;
        S : in  std_logic;
        -- Outputs
        Y : out std_logic
        );
end component;
-- Synchronizer
component Synchronizer
    -- Port list
    port(
        -- Inputs
        ACLK  : in  std_logic;
        BCLK  : in  std_logic;
        RESET : in  std_logic;
        -- Outputs
        DOUT  : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal DFN1C1_0_Q          : std_logic;
signal DFN1C1_1_Q          : std_logic;
signal Dout_net_0          : std_logic;
signal INV_0_Y             : std_logic;
signal MX2_0_Y             : std_logic;
signal Synchronizer_0_DOUT : std_logic;
signal Dout_net_1          : std_logic;

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 Dout_net_1 <= Dout_net_0;
 Dout       <= Dout_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- DFN1C1_0
DFN1C1_0 : DFN1C1
    port map( 
        -- Inputs
        D   => INV_0_Y,
        CLK => Aclk,
        CLR => Reset,
        -- Outputs
        Q   => DFN1C1_0_Q 
        );
-- DFN1C1_1
DFN1C1_1 : DFN1C1
    port map( 
        -- Inputs
        D   => MX2_0_Y,
        CLK => Aclk,
        CLR => Reset,
        -- Outputs
        Q   => DFN1C1_1_Q 
        );
-- DFN1C1_2
DFN1C1_2 : DFN1C1
    port map( 
        -- Inputs
        D   => DFN1C1_1_Q,
        CLK => Bclk,
        CLR => Reset,
        -- Outputs
        Q   => Dout_net_0 
        );
-- INV_0
INV_0 : INV
    port map( 
        -- Inputs
        A => DFN1C1_0_Q,
        -- Outputs
        Y => INV_0_Y 
        );
-- MX2_0
MX2_0 : MX2
    port map( 
        -- Inputs
        A => DFN1C1_1_Q,
        B => DFN1C1_0_Q,
        S => Synchronizer_0_DOUT,
        -- Outputs
        Y => MX2_0_Y 
        );
-- Synchronizer_0
Synchronizer_0 : Synchronizer
    port map( 
        -- Inputs
        ACLK  => Aclk,
        BCLK  => Bclk,
        RESET => Reset,
        -- Outputs
        DOUT  => Synchronizer_0_DOUT 
        );

end RTL;
