--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: CDC3FF.vhd
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

entity CDC3FF is
port (
   Aclk     : in    std_logic;
   Bclk     : in    std_logic;
   reset    : in    std_logic;
   Dout     : out   std_logic
);
end entity CDC3FF;


architecture CDC3FF_arch of CDC3FF is
   signal S1    : std_logic;
   signal S2    : std_logic;
begin
   u1 : DFN1C1 port map (
                  CLK => Aclk,
                  CLR => reset,
                  D   => Bclk,
                  Q   => S1
               );
   u2 : DFN1C1 port map (
                  CLK => Aclk,
                  CLR => reset,
                  D   => S1,
                  Q   => S2
               );
   u3 : DFN1C1 port map (
                  CLK => Aclk,
                  CLR => reset,
                  D   => S2,
                  Q   => Dout
               );

   
end CDC3FF_arch;
