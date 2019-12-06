--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Synchronizer.vhd
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

library IEEE;
use IEEE.std_logic_1164.all;
library smartfusion;
use smartfusion.components.all;

entity Synchronizer is
port (
   ACLK     : in    std_logic;
   BCLK     : in    std_logic;
   RESET    : in    std_logic;
   DOUT     : out   std_logic
);
end entity Synchronizer;


architecture Synchronizer_arch of Synchronizer is
   signal S1    : std_logic;
   signal S2    : std_logic;
begin
   u1 : DFN1C1 port map (
                  CLK => ACLK,
                  CLR => RESET,
                  D   => BCLK,
                  Q   => S1
               );
   u2 : DFN1C1 port map (
                  CLK => ACLK,
                  CLR => RESET,
                  D   => S1,
                  Q   => S2
               );
   u3 : DFN1C1 port map (
                  CLK => ACLK,
                  CLR => RESET,
                  D   => S2,
                  Q   => DOUT
               );
end Synchronizer_arch;