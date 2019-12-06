-- Version: v11.8 11.8.0.26

library ieee;
use ieee.std_logic_1164.all;
library smartfusion;
use smartfusion.all;

entity CDC3FF is

    port( Bclk_c        : in    std_logic;
          CLR_c         : in    std_logic;
          Aclk_c        : in    std_logic;
          CDC3FF_0_Dout : out   std_logic
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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal S2, S1, \GND\, \VCC\ : std_logic;

begin 


    u2 : DFN1C1
      port map(D => S1, CLK => Aclk_c, CLR => CLR_c, Q => S2);
    
    u3 : DFN1C1
      port map(D => S2, CLK => Aclk_c, CLR => CLR_c, Q => 
        CDC3FF_0_Dout);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    u1 : DFN1C1
      port map(D => Bclk_c, CLK => Aclk_c, CLR => CLR_c, Q => S1);
    
    GND_i : GND
      port map(Y => \GND\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion;
use smartfusion.all;

entity PartA is

    port( Aclk : in    std_logic;
          Bclk : in    std_logic;
          CLR  : in    std_logic;
          Dout : out   std_logic
        );

end PartA;

architecture DEF_ARCH of PartA is 

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

  component OUTBUF
    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CDC3FF
    port( Bclk_c        : in    std_logic := 'U';
          CLR_c         : in    std_logic := 'U';
          Aclk_c        : in    std_logic := 'U';
          CDC3FF_0_Dout : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

    signal CDC3FF_0_Dout, INV_0_Y, DFN1C1_0_Q, MX2_0_Y, 
        DFN1C1_1_Q, \GND\, \VCC\, Aclk_c, Bclk_c, CLR_c, Dout_c
         : std_logic;

    for all : CDC3FF
	Use entity work.CDC3FF(DEF_ARCH);
begin 


    DFN1C1_2 : DFN1C1
      port map(D => DFN1C1_1_Q, CLK => Bclk_c, CLR => CLR_c, Q
         => Dout_c);
    
    DFN1C1_1 : DFN1C1
      port map(D => MX2_0_Y, CLK => Aclk_c, CLR => CLR_c, Q => 
        DFN1C1_1_Q);
    
    DFN1C1_0 : DFN1C1
      port map(D => INV_0_Y, CLK => Aclk_c, CLR => CLR_c, Q => 
        DFN1C1_0_Q);
    
    Bclk_pad : CLKBUF
      port map(PAD => Bclk, Y => Bclk_c);
    
    Dout_pad : OUTBUF
      port map(D => Dout_c, PAD => Dout);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    INV_0 : INV
      port map(A => DFN1C1_0_Q, Y => INV_0_Y);
    
    CDC3FF_0 : CDC3FF
      port map(Bclk_c => Bclk_c, CLR_c => CLR_c, Aclk_c => Aclk_c, 
        CDC3FF_0_Dout => CDC3FF_0_Dout);
    
    Aclk_pad : CLKBUF
      port map(PAD => Aclk, Y => Aclk_c);
    
    GND_i : GND
      port map(Y => \GND\);
    
    MX2_0 : MX2
      port map(A => DFN1C1_1_Q, B => DFN1C1_0_Q, S => 
        CDC3FF_0_Dout, Y => MX2_0_Y);
    
    CLR_pad : INBUF
      port map(PAD => CLR, Y => CLR_c);
    

end DEF_ARCH; 
