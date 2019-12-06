----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Sat Nov 30 13:50:30 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should
-- copy this file and modify it.
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: fifo2x8_tb.vhd
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

use work.fifo_array_type.all;

entity fifo2x8_tb is
end entity fifo2x8_tb;

architecture behavioral of fifo2x8_tb is
   constant clk1_period : time := 40 ns; -- 25 MHz
   constant clk2_period : time := 25 ns; -- 40 MHz

   -- input signal declarations
   signal clk1:     std_logic := '0';
   signal clk2:     std_logic := '0';
   signal rst:      std_logic := '0';
   signal wr:       std_logic := '0';
   signal rd:       std_logic := '0';
   signal rdinc:    std_logic := '0';
   signal wrinc:    std_logic := '0';
   signal rdptrclr: std_logic := '0';
   signal wrptrclr: std_logic := '0';
   signal data_in:  std_logic_vector(7 downto 0) := X"00";
   -- output signal declarations
   signal full:     std_logic := '0';
   signal empty:    std_logic := '0';
   signal data_out: std_logic_vector(7 downto 0) := X"00";
   signal fifo: fifo_array;
begin

setup: process
variable initial: boolean := true;
begin
   if (initial = true) then
      -- Assert Reset
      rst <= '1';
      wait for ( clk1_period * 2 );
      rst <= '0';
      wait;
   end if;
end process setup;

-- Clock Driver
clk1 <= not clk1 after (clk1_period / 2.0 );
clk2 <= not clk2 after (clk2_period / 2.0 );

-- Instantiate Unit Under Test:  fifo2x8
fifo2x8_0 : entity work.fifo2x8
   -- port map
   port map(
      -- Inputs
      clk1       => clk1,
      clk2       => clk2,
      rst        => rst,
      rd         => rd,
      wr         => wr,
      rdinc      => rdinc,
      wrinc      => wrinc,
      rdptrclr   => rdptrclr,
      wrptrclr   => wrptrclr,
      data_in    => data_in,

      -- Outputs
      full       => full,
      empty      => empty,
      data_out   => data_out,
      fifo       => fifo
   );

-- process to report changes in values of signals
myprint: process (rd, wr, rdinc, wrinc, full, empty, data_out, data_in)
begin
   report lf & "rd" & ht & "wr" & ht & "rdinc" & ht & "wrinc" & ht & "full" & ht & "empty" & ht & "data_out" & ht & "data_in" & lf &
          std_logic'image(rd) & ht & std_logic'image(wr) & ht & std_logic'image(rdinc) & ht & std_logic'image(wrinc) & ht &
          std_logic'image(full) & ht & std_logic'image(empty) & ht & to_hstring(data_out) & ht & to_hstring(data_in);
end process myprint;

main: process
begin
   wait until rst = '0';
   -- fill up FIFO
   data_in <= X"01";
   assert wrptrclr <='0'
      report "wrptrclr /= 1 wrptrclr = " & std_logic'image(wrptrclr);
   wr    <='1';
   wrinc <='1';
   wait until rising_edge(clk1); -- data_in should be written at first memory location
   wait until rising_edge(clk1);
   data_in <=X"02";
   wait until rising_edge(clk1);
   wait until rising_edge(clk1);
   wr    <='0';
   wrinc <='0';
   wait;
end process main;

end architecture behavioral;