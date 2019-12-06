--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Counter.vhd
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

entity Counter is port (
   CLK:     in std_logic; 	-- clock
   RESET:	in std_logic;  -- Active low, synchronous reset
   CE:      in std_logic; -- Count enable
   Q:       out std_logic_vector(15 downto 0);
   TC:      out std_logic  -- Terminal Count
);
end entity Counter;

architecture Counter_arch of Counter is
	-- interal signal to hold value of Q
	signal count : unsigned(15 downto 0) := x"0000";

begin
   -- concurrent statments
   Q <= std_logic_vector(count);
   TC <= '1' when ((CE='1') and (count=x"FFFF")) else '0';

   -- main process checks input signals on rising clock edge
   main : process(CLK)
   begin
      if rising_edge(CLK) then
         if RESET = '0' then
				-- synchronous reset
             count <= x"0000";
         elsif CE = '1' then
				-- normal operation (increment count)
				count <= count + 1;
			end if;
      end if;
	end process main;
end architecture Counter_arch;