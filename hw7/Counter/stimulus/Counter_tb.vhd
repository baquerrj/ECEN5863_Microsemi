----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Wed Nov 06 18:48:11 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Counter_tb.vhd
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

entity Counter_tb is
end Counter_tb;
architecture Counter_arch of Counter_tb is

-- signals
signal CE : std_logic := '1';
signal CLK : std_logic := '0';
signal Q : std_logic_vector(15 DOWNTO 0) := x"0000";
signal RESET : std_logic := '1';
signal TC : std_logic := '0';

constant period : time := 20 ns;

begin
	uut : entity work.Counter
	port map (
-- list connections between master ports and signals
	CE		=> CE,
	CLK 	=> CLK,
	Q 		=> Q,
	RESET => RESET,
	TC 	=> TC
	);

	CLK <= not CLK after period/2;

init : process
begin
	wait for (period * 20);
	CE <= '0';
	wait for (period * 20);
	CE <= '1';
	wait;
end process init;

end Counter_arch;


