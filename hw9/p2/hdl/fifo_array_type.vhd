--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: fifo_array_type.vhd
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
use ieee.numeric_std.all; 

package fifo_array_type is
   type fifo_array is array(1 downto 0) of std_logic_vector(7 downto 0);
end fifo_array_type;

package body fifo_array_type is
end fifo_array_type;

