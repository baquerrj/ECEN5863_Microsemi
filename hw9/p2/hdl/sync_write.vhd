-- sync_write.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_write is
port (
   wrptr:   in  std_logic;
   rst:     in  std_logic;
   clk:     in  std_logic;
   wrptrq:  out std_logic
);
end entity sync_write;

architecture sync_write_arch of sync_write is
   signal wrptrd1, wrptrd2: std_logic;

begin

sync: process(clk, rst, wrptr)
begin
   if (rising_edge(clk)) then
      if (rst = '1') then
         wrptrd1 <= '0';
         wrptrd2 <= '0';
      else
         wrptrd1 <= wrptr;
         wrptrd2 <= wrptrd1;
         wrptrq  <= wrptrd2;
      end if;
   end if;
end process sync;


end architecture sync_write_arch;