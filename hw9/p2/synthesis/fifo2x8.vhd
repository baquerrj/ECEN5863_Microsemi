-- Version: v11.8 11.8.0.26

library ieee;
use ieee.std_logic_1164.all;
library smartfusion;
use smartfusion.all;

entity fifo2x8 is

    port( clk1     : in    std_logic;
          clk2     : in    std_logic;
          rst      : in    std_logic;
          rd       : in    std_logic;
          wr       : in    std_logic;
          rdinc    : in    std_logic;
          wrinc    : in    std_logic;
          rdptrclr : in    std_logic;
          wrptrclr : in    std_logic;
          full     : out   std_logic;
          empty    : out   std_logic;
          data_in  : in    std_logic_vector(7 downto 0);
          data_out : out   std_logic_vector(7 downto 0);
          fifo     : out   std_logic_vector(15 downto 0)
        );

end fifo2x8;

architecture DEF_ARCH of fifo2x8 is 

  component OUTBUF
    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component DFN1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component DFN1E1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1P1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component XA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \rdptr\, \wrptr\, \wrptrd2\, \wrptrd1\, \rptrd2\, 
        \rptrd1\, fifo_1_0_sqmuxa, \dmuxout[0]\, \dmuxout[1]\, 
        \dmuxout[2]\, \dmuxout[3]\, \dmuxout[4]\, \dmuxout[5]\, 
        \dmuxout[6]\, \dmuxout[7]\, \read_count.un1_rdinc\, 
        \write_count.un1_wrinc\, \fifo_0_0_sqmuxa\, 
        \read_count.rdptr_3\, \write_count.wrptr_2\, 
        \detFull.un7_wrptr\, \detEmpty.un1_wrptrd2\, \rptrd1_RNO\, 
        \wrptrd1_RNO\, \rptrd2_RNO\, \wrptrd2_RNO\, \GND\, \VCC\, 
        clk1_c, clk2_c, rst_c, rd_c, wr_c, rdinc_c, wrinc_c, 
        rdptrclr_c, wrptrclr_c, full_c, empty_c, \data_in_c[0]\, 
        \data_in_c[1]\, \data_in_c[2]\, \data_in_c[3]\, 
        \data_in_c[4]\, \data_in_c[5]\, \data_in_c[6]\, 
        \data_in_c[7]\, \data_out_c[0]\, \data_out_c[1]\, 
        \data_out_c[2]\, \data_out_c[3]\, \data_out_c[4]\, 
        \data_out_c[5]\, \data_out_c[6]\, \data_out_c[7]\, 
        \fifo_c[0]\, \fifo_c[1]\, \fifo_c[2]\, \fifo_c[3]\, 
        \fifo_c[4]\, \fifo_c[5]\, \fifo_c[6]\, \fifo_c[7]\, 
        \fifo_c[8]\, \fifo_c[9]\, \fifo_c[10]\, \fifo_c[11]\, 
        \fifo_c[12]\, \fifo_c[13]\, \fifo_c[14]\, \fifo_c[15]\
         : std_logic;

begin 


    \fifo_pad[13]\ : OUTBUF
      port map(D => \fifo_c[13]\, PAD => fifo(13));
    
    \data_out_pad[0]\ : OUTBUF
      port map(D => \data_out_c[0]\, PAD => data_out(0));
    
    i_full : DFN1C1
      port map(D => \detFull.un7_wrptr\, CLK => clk1_c, CLR => 
        rst_c, Q => full_c);
    
    \fifo_1[0]\ : DFN1E1C1
      port map(D => \data_in_c[0]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[8]\);
    
    \fifo_0[3]\ : DFN1E1C1
      port map(D => \data_in_c[3]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[3]\);
    
    \fifo_1[3]\ : DFN1E1C1
      port map(D => \data_in_c[3]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[11]\);
    
    fifo_0_0_sqmuxa : NOR2A
      port map(A => wr_c, B => \wrptr\, Y => \fifo_0_0_sqmuxa\);
    
    rst_pad : INBUF
      port map(PAD => rst, Y => rst_c);
    
    wrptrclr_pad : INBUF
      port map(PAD => wrptrclr, Y => wrptrclr_c);
    
    \data_out_pad[5]\ : OUTBUF
      port map(D => \data_out_c[5]\, PAD => data_out(5));
    
    rdptr_RNO_0 : OR2
      port map(A => rdptrclr_c, B => rdinc_c, Y => 
        \read_count.un1_rdinc\);
    
    \data_in_pad[0]\ : INBUF
      port map(PAD => data_in(0), Y => \data_in_c[0]\);
    
    \fifo_pad[6]\ : OUTBUF
      port map(D => \fifo_c[6]\, PAD => fifo(6));
    
    \data_out_pad[3]\ : OUTBUF
      port map(D => \data_out_c[3]\, PAD => data_out(3));
    
    \data_out[3]\ : DFN1E1
      port map(D => \dmuxout[3]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[3]\);
    
    \fifo_1[4]\ : DFN1E1C1
      port map(D => \data_in_c[4]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[12]\);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    wrptr_RNO_0 : OR2
      port map(A => wrptrclr_c, B => wrinc_c, Y => 
        \write_count.un1_wrinc\);
    
    full_pad : OUTBUF
      port map(D => full_c, PAD => full);
    
    \fifo_1[2]\ : DFN1E1C1
      port map(D => \data_in_c[2]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[10]\);
    
    wrinc_pad : INBUF
      port map(PAD => wrinc, Y => wrinc_c);
    
    \fifo_pad[9]\ : OUTBUF
      port map(D => \fifo_c[9]\, PAD => fifo(9));
    
    wrptrd1 : DFN1
      port map(D => \wrptrd1_RNO\, CLK => clk2_c, Q => \wrptrd1\);
    
    \fifo_pad[3]\ : OUTBUF
      port map(D => \fifo_c[3]\, PAD => fifo(3));
    
    \fifo_1[6]\ : DFN1E1C1
      port map(D => \data_in_c[6]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[14]\);
    
    \data_in_pad[7]\ : INBUF
      port map(PAD => data_in(7), Y => \data_in_c[7]\);
    
    \data_in_pad[4]\ : INBUF
      port map(PAD => data_in(4), Y => \data_in_c[4]\);
    
    rd_pad : INBUF
      port map(PAD => rd, Y => rd_c);
    
    \fifo_pad[8]\ : OUTBUF
      port map(D => \fifo_c[8]\, PAD => fifo(8));
    
    \data_out[7]\ : DFN1E1
      port map(D => \dmuxout[7]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[7]\);
    
    \data_out[4]\ : DFN1E1
      port map(D => \dmuxout[4]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[4]\);
    
    \fifo_1[1]\ : DFN1E1C1
      port map(D => \data_in_c[1]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[9]\);
    
    \data_in_pad[5]\ : INBUF
      port map(PAD => data_in(5), Y => \data_in_c[5]\);
    
    wrptrd2_RNO : NOR2A
      port map(A => \wrptrd1\, B => wrptrclr_c, Y => 
        \wrptrd2_RNO\);
    
    \fifo_0[0]\ : DFN1E1C1
      port map(D => \data_in_c[0]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[0]\);
    
    wr_pad : INBUF
      port map(PAD => wr, Y => wr_c);
    
    \fifo_pad[10]\ : OUTBUF
      port map(D => \fifo_c[10]\, PAD => fifo(10));
    
    rdptr : DFN1E1C1
      port map(D => \read_count.rdptr_3\, CLK => clk2_c, CLR => 
        rst_c, E => \read_count.un1_rdinc\, Q => \rdptr\);
    
    \data_out_RNO[2]\ : MX2
      port map(A => \fifo_c[2]\, B => \fifo_c[10]\, S => \rdptr\, 
        Y => \dmuxout[2]\);
    
    rptrd1 : DFN1
      port map(D => \rptrd1_RNO\, CLK => clk1_c, Q => \rptrd1\);
    
    wr_pad_RNIS489 : NOR2B
      port map(A => \wrptr\, B => wr_c, Y => fifo_1_0_sqmuxa);
    
    i_empty : DFN1P1
      port map(D => \detEmpty.un1_wrptrd2\, CLK => clk2_c, PRE
         => rst_c, Q => empty_c);
    
    \fifo_pad[7]\ : OUTBUF
      port map(D => \fifo_c[7]\, PAD => fifo(7));
    
    \fifo_pad[2]\ : OUTBUF
      port map(D => \fifo_c[2]\, PAD => fifo(2));
    
    \fifo_pad[15]\ : OUTBUF
      port map(D => \fifo_c[15]\, PAD => fifo(15));
    
    \data_out[5]\ : DFN1E1
      port map(D => \dmuxout[5]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[5]\);
    
    \data_in_pad[6]\ : INBUF
      port map(PAD => data_in(6), Y => \data_in_c[6]\);
    
    wrptrd2 : DFN1
      port map(D => \wrptrd2_RNO\, CLK => clk2_c, Q => \wrptrd2\);
    
    i_full_RNO : XA1C
      port map(A => \wrptr\, B => \rptrd2\, C => full_c, Y => 
        \detFull.un7_wrptr\);
    
    \data_in_pad[1]\ : INBUF
      port map(PAD => data_in(1), Y => \data_in_c[1]\);
    
    rptrd2 : DFN1
      port map(D => \rptrd2_RNO\, CLK => clk1_c, Q => \rptrd2\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    empty_pad : OUTBUF
      port map(D => empty_c, PAD => empty);
    
    \data_out[0]\ : DFN1E1
      port map(D => \dmuxout[0]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[0]\);
    
    wrptrd1_RNO : NOR2A
      port map(A => \wrptr\, B => wrptrclr_c, Y => \wrptrd1_RNO\);
    
    rdinc_pad : INBUF
      port map(PAD => rdinc, Y => rdinc_c);
    
    rdptr_RNO : NOR2
      port map(A => rdptrclr_c, B => \rdptr\, Y => 
        \read_count.rdptr_3\);
    
    \data_out_RNO[0]\ : MX2
      port map(A => \fifo_c[0]\, B => \fifo_c[8]\, S => \rdptr\, 
        Y => \dmuxout[0]\);
    
    rptrd2_RNO : NOR2A
      port map(A => \rptrd1\, B => rdptrclr_c, Y => \rptrd2_RNO\);
    
    \fifo_1[7]\ : DFN1E1C1
      port map(D => \data_in_c[7]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[15]\);
    
    \data_out_RNO[3]\ : MX2
      port map(A => \fifo_c[3]\, B => \fifo_c[11]\, S => \rdptr\, 
        Y => \dmuxout[3]\);
    
    \data_out_RNO[6]\ : MX2
      port map(A => \fifo_c[6]\, B => \fifo_c[14]\, S => \rdptr\, 
        Y => \dmuxout[6]\);
    
    \data_out[2]\ : DFN1E1
      port map(D => \dmuxout[2]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[2]\);
    
    \fifo_0[4]\ : DFN1E1C1
      port map(D => \data_in_c[4]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[4]\);
    
    \data_out[6]\ : DFN1E1
      port map(D => \dmuxout[6]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[6]\);
    
    \fifo_pad[12]\ : OUTBUF
      port map(D => \fifo_c[12]\, PAD => fifo(12));
    
    \fifo_0[6]\ : DFN1E1C1
      port map(D => \data_in_c[6]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[6]\);
    
    \data_out_pad[4]\ : OUTBUF
      port map(D => \data_out_c[4]\, PAD => data_out(4));
    
    \fifo_pad[0]\ : OUTBUF
      port map(D => \fifo_c[0]\, PAD => fifo(0));
    
    \data_out_RNO[4]\ : MX2
      port map(A => \fifo_c[4]\, B => \fifo_c[12]\, S => \rdptr\, 
        Y => \dmuxout[4]\);
    
    \data_out_pad[6]\ : OUTBUF
      port map(D => \data_out_c[6]\, PAD => data_out(6));
    
    \fifo_pad[11]\ : OUTBUF
      port map(D => \fifo_c[11]\, PAD => fifo(11));
    
    \data_out_RNO[7]\ : MX2
      port map(A => \fifo_c[7]\, B => \fifo_c[15]\, S => \rdptr\, 
        Y => \dmuxout[7]\);
    
    wrptr : DFN1E1C1
      port map(D => \write_count.wrptr_2\, CLK => clk1_c, CLR => 
        rst_c, E => \write_count.un1_wrinc\, Q => \wrptr\);
    
    \fifo_0[2]\ : DFN1E1C1
      port map(D => \data_in_c[2]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[2]\);
    
    \data_out_pad[2]\ : OUTBUF
      port map(D => \data_out_c[2]\, PAD => data_out(2));
    
    clk1_pad : CLKBUF
      port map(PAD => clk1, Y => clk1_c);
    
    i_empty_RNO : XA1A
      port map(A => \wrptrd2\, B => \rdptr\, C => empty_c, Y => 
        \detEmpty.un1_wrptrd2\);
    
    \data_in_pad[3]\ : INBUF
      port map(PAD => data_in(3), Y => \data_in_c[3]\);
    
    rdptrclr_pad : INBUF
      port map(PAD => rdptrclr, Y => rdptrclr_c);
    
    \fifo_0[1]\ : DFN1E1C1
      port map(D => \data_in_c[1]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[1]\);
    
    \fifo_pad[4]\ : OUTBUF
      port map(D => \fifo_c[4]\, PAD => fifo(4));
    
    \fifo_pad[14]\ : OUTBUF
      port map(D => \fifo_c[14]\, PAD => fifo(14));
    
    \data_out[1]\ : DFN1E1
      port map(D => \dmuxout[1]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[1]\);
    
    \data_in_pad[2]\ : INBUF
      port map(PAD => data_in(2), Y => \data_in_c[2]\);
    
    \fifo_1[5]\ : DFN1E1C1
      port map(D => \data_in_c[5]\, CLK => clk1_c, CLR => rst_c, 
        E => fifo_1_0_sqmuxa, Q => \fifo_c[13]\);
    
    \data_out_RNO[5]\ : MX2
      port map(A => \fifo_c[5]\, B => \fifo_c[13]\, S => \rdptr\, 
        Y => \dmuxout[5]\);
    
    \data_out_pad[1]\ : OUTBUF
      port map(D => \data_out_c[1]\, PAD => data_out(1));
    
    wrptr_RNO : NOR2
      port map(A => wrptrclr_c, B => \wrptr\, Y => 
        \write_count.wrptr_2\);
    
    \fifo_0[5]\ : DFN1E1C1
      port map(D => \data_in_c[5]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[5]\);
    
    \data_out_pad[7]\ : OUTBUF
      port map(D => \data_out_c[7]\, PAD => data_out(7));
    
    clk2_pad : CLKBUF
      port map(PAD => clk2, Y => clk2_c);
    
    rptrd1_RNO : NOR2A
      port map(A => \rdptr\, B => rdptrclr_c, Y => \rptrd1_RNO\);
    
    \fifo_pad[1]\ : OUTBUF
      port map(D => \fifo_c[1]\, PAD => fifo(1));
    
    \fifo_0[7]\ : DFN1E1C1
      port map(D => \data_in_c[7]\, CLK => clk1_c, CLR => rst_c, 
        E => \fifo_0_0_sqmuxa\, Q => \fifo_c[7]\);
    
    \data_out_RNO[1]\ : MX2
      port map(A => \fifo_c[1]\, B => \fifo_c[9]\, S => \rdptr\, 
        Y => \dmuxout[1]\);
    
    \fifo_pad[5]\ : OUTBUF
      port map(D => \fifo_c[5]\, PAD => fifo(5));
    

end DEF_ARCH; 
