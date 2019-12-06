-- Version: v11.8 11.8.0.26

library ieee;
use ieee.std_logic_1164.all;
library smartfusion;
use smartfusion.all;

entity CDC3FF is

    port( Aclk  : in    std_logic;
          Bclk  : in    std_logic;
          reset : in    std_logic;
          Dout  : out   std_logic
        );

end CDC3FF;

architecture DEF_ARCH of CDC3FF is 

  component DFN1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CLKBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component INBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component OUTBUF
    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

    signal S1, S2, \GND\, \VCC\, Aclk_c, Bclk_c, reset_c, Dout_c
         : std_logic;

begin 


    u2 : DFN1C1
      port map(D => S1, CLK => Aclk_c, CLR => reset_c, Q => S2);
    
    Aclk_pad : CLKBUF
      port map(PAD => Aclk, Y => Aclk_c);
    
    reset_pad : INBUF
      port map(PAD => reset, Y => reset_c);
    
    u3 : DFN1C1
      port map(D => S2, CLK => Aclk_c, CLR => reset_c, Q => 
        Dout_c);
    
    Bclk_pad : INBUF
      port map(PAD => Bclk, Y => Bclk_c);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    u1 : DFN1C1
      port map(D => Bclk_c, CLK => Aclk_c, CLR => reset_c, Q => 
        S1);
    
    GND_i : GND
      port map(Y => \GND\);
    
    Dout_pad : OUTBUF
      port map(D => Dout_c, PAD => Dout);
    

end DEF_ARCH; 
