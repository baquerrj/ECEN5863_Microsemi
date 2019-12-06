--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: fifo2x8.vhd
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

--package body my_types is
   --library ieee;
   --use ieee.std_logic_1164.all;
   --use ieee.numeric_std.all; 
--end my_types;

entity fifo2x8 is 
port(
   clk1, clk2, rst:         in  std_logic;
   rd, wr, rdinc, wrinc:    in  std_logic;
   rdptrclr, wrptrclr:      in  std_logic;
   full, empty:             out std_logic;
   data_in:		            in  std_logic_vector(7 downto 0);
   data_out:		        out std_logic_vector(7 downto 0);
   fifo: out fifo_array
);
end entity fifo2x8;

architecture archfifo2x8 of fifo2x8 is
   -- make use of VHDL's enumerated type
   -- type fifo_array is array(1 downto 0) of std_logic_vector(7 downto 0);
   -- signal fifo: fifo_array;
   signal wrptr, rdptr:     std_logic := '0';
   signal wrptrd1, wrptrd2: std_logic := '0';
   signal rptrd1, rptrd2:   std_logic := '0';
   signal en:               std_logic_vector(1 downto 0) := "01";
   signal dmuxout:          std_logic_vector(7 downto 0) := x"00";
   
   -- internal full/empty signals (empty at start & not full)
   signal i_full:  std_logic := '0';
   signal i_empty: std_logic := '1';
begin


full <= i_full;
empty <= i_empty;

-- fifo register array (Dual port RAM);
reg_array: process(rst, clk1)
begin
   if rst = '1' then
      for i in 1 downto 0 loop
         fifo(i) <= (others => '0');
      end loop;
   elsif (rising_edge(clk1)) then
      if wr = '1' then -- wr could be the same as not FULL
         for i in 1 downto 0 loop
            if en(i) = '1' then
				fifo(i) <= data_in;
			else	
				fifo(i) <= fifo(i);
			end if;
		end loop;
      end if;
	end if;
end process;

-- Clk2 control of outputs
read_out: process (clk2, rd, dmuxout)
begin
   if (rising_edge(clk2)) then
      if rd = '1' then -- typically rd could be same as not empty
         data_out <= dmuxout;
      else
         data_out <= data_out;
      end if;
   end if;
end process;

-- 2:1 output data mux
with rdptr select
   dmuxout <= fifo(0) when '0',
              fifo(1) when '1',
              fifo(1) when others;

-- FIFO register selector decoder
with wrptr select
   en <= "01" when '0',
         "10" when '1',
         "10" when others;

-- read pointer
read_count: process (rst, clk2)
begin
   if rst = '1' then
      rdptr <= '0';
   elsif (rising_edge(clk2)) then
      if rdptrclr = '1' then
         rdptr <= '0';
      elsif rdinc = '1' then
         rdptr <= not(rdptr);
      end if;
   end if;
end process;

-- write pointer
write_count: process (rst, clk1)
begin
   if rst = '1' then
      wrptr <= '0';
   elsif (rising_edge(clk1)) then
      if wrptrclr = '1' then
         wrptr <= '0';
      elsif wrinc = '1' then
         wrptr <= not(wrptr);
      end if;
   end if;
end process;

-- generate FULL signal
detFull: process (rst, clk1, wrptr, rptrd2, i_full)
begin
   if (rst = '1') then
      i_full <= '0';
   elsif (rising_edge(clk1)) then
      -- compare synchronized rptr from clock domain 2 with 
      -- current wrptr of the write logic
      if (wrptr = rptrd2) and (i_full = '0') then
         i_full <= '1';
      else
         i_full <= '0';
      end if;
   end if;
end process detFull;
   

-- generate EMPTY signal
detEmpty: process (rst, clk2, wrptrd2, rdptr, i_empty)
begin
   if (rst = '1') then
      i_empty <= '1';
   elsif (rising_edge(clk2)) then
      -- compare synchronized wrptr from clock domain 2 with
      -- current rptr of read logic
      if (wrptrd2 = rdptr) and (i_empty = '1') then
         i_empty <= '1';
      else
         i_empty <= '0';
      end if;
   end if;
end process;

-- synchronizer for wrptr
sync_write: process (clk2, wrptrclr, wrptr)
begin
   if (rising_edge(clk2)) then
      if (wrptrclr = '1') then -- reset
         wrptrd1 <= '0';
         wrptrd2 <= '0';
      else 
         wrptrd1 <= wrptr;
         wrptrd2 <= wrptrd1;
      end if;
   end if;
end process sync_write;

-- synchronizer for rdptr
sync_read: process (clk1, rdptrclr, rdptr)
begin
   if (rising_edge(clk1)) then
      if (rdptrclr = '1') then -- reset
         rptrd1 <= '0';
         rptrd2 <= '0';
      else 
         rptrd1 <= rdptr;
         rptrd2 <= rptrd1;
      end if;
   end if;
end process sync_read;

end archfifo2x8;
