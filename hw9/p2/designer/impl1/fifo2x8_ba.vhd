-- Version: v11.8 11.8.0.26
-- File used only for Simulation

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
          data_out : out   std_logic_vector(7 downto 0)
        );

end fifo2x8;

architecture DEF_ARCH of fifo2x8 is 

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component DFN1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
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

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
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

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKSRC
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal rdptr, wrptr, \wrptrd2\, \wrptrd1\, \rptrd2\, \rptrd1\, 
        fifo_1_0_sqmuxa, \dmuxout[0]\, \dmuxout[1]\, \dmuxout[2]\, 
        \dmuxout[3]\, \dmuxout[4]\, \dmuxout[5]\, \dmuxout[6]\, 
        \dmuxout[7]\, \reg_array.fifo_0[0]\, 
        \reg_array.fifo_0[1]\, \reg_array.fifo_0[2]\, 
        \reg_array.fifo_0[3]\, \reg_array.fifo_0[4]\, 
        \reg_array.fifo_0[5]\, \reg_array.fifo_0[6]\, 
        \reg_array.fifo_0[7]\, \reg_array.fifo_1[0]\, 
        \reg_array.fifo_1[1]\, \reg_array.fifo_1[2]\, 
        \reg_array.fifo_1[3]\, \reg_array.fifo_1[4]\, 
        \reg_array.fifo_1[5]\, \reg_array.fifo_1[6]\, 
        \reg_array.fifo_1[7]\, \read_count.un1_rdinc\, 
        \write_count.un1_wrinc\, \fifo_0_0_sqmuxa\, 
        \read_count.rdptr_3\, \write_count.wrptr_2\, 
        \detFull.un7_wrptr\, \detEmpty.un1_wrptrd2\, \rptrd1_RNO\, 
        \wrptrd1_RNO\, \rptrd2_RNO\, \wrptrd2_RNO\, clk1_c, 
        clk2_c, rst_c, rd_c, wr_c, rdinc_c, wrinc_c, rdptrclr_c, 
        wrptrclr_c, full_c, empty_c, \data_in_c[0]\, 
        \data_in_c[1]\, \data_in_c[2]\, \data_in_c[3]\, 
        \data_in_c[4]\, \data_in_c[5]\, \data_in_c[6]\, 
        \data_in_c[7]\, \data_out_c[0]\, \data_out_c[1]\, 
        \data_out_c[2]\, \data_out_c[3]\, \data_out_c[4]\, 
        \data_out_c[5]\, \data_out_c[6]\, \data_out_c[7]\, 
        \data_out_pad[0]/U0/NET1\, \data_out_pad[0]/U0/NET2\, 
        \rst_pad/U0/NET1\, \wrptrclr_pad/U0/NET1\, 
        \data_out_pad[5]/U0/NET1\, \data_out_pad[5]/U0/NET2\, 
        \data_in_pad[0]/U0/NET1\, \data_out_pad[3]/U0/NET1\, 
        \data_out_pad[3]/U0/NET2\, \full_pad/U0/NET1\, 
        \full_pad/U0/NET2\, \wrinc_pad/U0/NET1\, 
        \data_in_pad[7]/U0/NET1\, \data_in_pad[4]/U0/NET1\, 
        \rd_pad/U0/NET1\, \data_in_pad[5]/U0/NET1\, 
        \wr_pad/U0/NET1\, \data_in_pad[6]/U0/NET1\, 
        \data_in_pad[1]/U0/NET1\, \empty_pad/U0/NET1\, 
        \empty_pad/U0/NET2\, \rdinc_pad/U0/NET1\, 
        \data_out_pad[4]/U0/NET1\, \data_out_pad[4]/U0/NET2\, 
        \data_out_pad[6]/U0/NET1\, \data_out_pad[6]/U0/NET2\, 
        \data_out_pad[2]/U0/NET1\, \data_out_pad[2]/U0/NET2\, 
        \clk1_pad/U0/NET1\, \data_in_pad[3]/U0/NET1\, 
        \rdptrclr_pad/U0/NET1\, \data_in_pad[2]/U0/NET1\, 
        \data_out_pad[1]/U0/NET1\, \data_out_pad[1]/U0/NET2\, 
        \data_out_pad[7]/U0/NET1\, \data_out_pad[7]/U0/NET2\, 
        \VCC\, \clk2_pad/U0/NET1\, \reg_array_fifo_1[6]/Y\, 
        \reg_array_fifo_1[2]/Y\, \reg_array_fifo_0[5]/Y\, 
        \reg_array_fifo_1[1]/Y\, \reg_array_fifo_0[6]/Y\, 
        \reg_array_fifo_0[3]/Y\, \reg_array_fifo_0[7]/Y\, 
        \reg_array_fifo_1[0]/Y\, \reg_array_fifo_1[4]/Y\, 
        \reg_array_fifo_0[2]/Y\, \rdptr/Y\, 
        \reg_array_fifo_0[4]/Y\, \reg_array_fifo_1[5]/Y\, 
        \reg_array_fifo_1[7]/Y\, \reg_array_fifo_0[0]/Y\, 
        \reg_array_fifo_1[3]/Y\, \wrptr/Y\, 
        \reg_array_fifo_0[1]/Y\, AFLSDF_VCC, AFLSDF_GND
         : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    AFLSDF_GND <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \rst_pad/U0/U0\ : IOPAD_IN
      port map(PAD => rst, Y => \rst_pad/U0/NET1\);
    
    \wrptr/U1\ : DFN1C1
      port map(D => \wrptr/Y\, CLK => clk1_c, CLR => rst_c, Q => 
        wrptr);
    
    \rd_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rd_pad/U0/NET1\, Y => rd_c);
    
    i_full : DFN1C1
      port map(D => \detFull.un7_wrptr\, CLK => clk1_c, CLR => 
        rst_c, Q => full_c);
    
    \reg_array.fifo_0[3]/U0\ : MX2
      port map(A => \reg_array.fifo_0[3]\, B => \data_in_c[3]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[3]/Y\);
    
    \full_pad/U0/U0\ : IOPAD_TRI
      port map(D => \full_pad/U0/NET1\, E => \full_pad/U0/NET2\, 
        PAD => full);
    
    \data_in_pad[2]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(2), Y => \data_in_pad[2]/U0/NET1\);
    
    \reg_array.fifo_0[6]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[6]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[6]\);
    
    \data_in_pad[7]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(7), Y => \data_in_pad[7]/U0/NET1\);
    
    \rdptr/U1\ : DFN1C1
      port map(D => \rdptr/Y\, CLK => clk2_c, CLR => rst_c, Q => 
        rdptr);
    
    fifo_0_0_sqmuxa : NOR2A
      port map(A => wr_c, B => wrptr, Y => \fifo_0_0_sqmuxa\);
    
    \data_in_pad[3]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(3), Y => \data_in_pad[3]/U0/NET1\);
    
    rdptr_RNO_0 : OR2
      port map(A => rdptrclr_c, B => rdinc_c, Y => 
        \read_count.un1_rdinc\);
    
    \rdinc_pad/U0/U0\ : IOPAD_IN
      port map(PAD => rdinc, Y => \rdinc_pad/U0/NET1\);
    
    \reg_array.fifo_0[2]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[2]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[2]\);
    
    \reg_array.fifo_1[0]/U0\ : MX2
      port map(A => \reg_array.fifo_1[0]\, B => \data_in_c[0]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[0]/Y\);
    
    \data_in_pad[1]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[1]/U0/NET1\, Y => 
        \data_in_c[1]\);
    
    \data_out[3]\ : DFN1E1
      port map(D => \dmuxout[3]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[3]\);
    
    \reg_array.fifo_1[3]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[3]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[3]\);
    
    \rst_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rst_pad/U0/NET1\, Y => rst_c);
    
    wrptr_RNO_0 : OR2
      port map(A => wrptrclr_c, B => wrinc_c, Y => 
        \write_count.un1_wrinc\);
    
    \rdptrclr_pad/U0/U0\ : IOPAD_IN
      port map(PAD => rdptrclr, Y => \rdptrclr_pad/U0/NET1\);
    
    \reg_array.fifo_1[1]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[1]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[1]\);
    
    \data_in_pad[2]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[2]/U0/NET1\, Y => 
        \data_in_c[2]\);
    
    \reg_array.fifo_0[0]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[0]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[0]\);
    
    \data_in_pad[7]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[7]/U0/NET1\, Y => 
        \data_in_c[7]\);
    
    wrptrd1 : DFN1
      port map(D => \wrptrd1_RNO\, CLK => clk2_c, Q => \wrptrd1\);
    
    \wrptr/U0\ : MX2
      port map(A => wrptr, B => \write_count.wrptr_2\, S => 
        \write_count.un1_wrinc\, Y => \wrptr/Y\);
    
    \rdptr/U0\ : MX2
      port map(A => rdptr, B => \read_count.rdptr_3\, S => 
        \read_count.un1_rdinc\, Y => \rdptr/Y\);
    
    \data_in_pad[3]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[3]/U0/NET1\, Y => 
        \data_in_c[3]\);
    
    \reg_array.fifo_1[2]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[2]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[2]\);
    
    \data_out_pad[1]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[1]\, E => \VCC\, DOUT => 
        \data_out_pad[1]/U0/NET1\, EOUT => 
        \data_out_pad[1]/U0/NET2\);
    
    \data_out_pad[1]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[1]/U0/NET1\, E => 
        \data_out_pad[1]/U0/NET2\, PAD => data_out(1));
    
    \clk2_pad/U0/U0\ : IOPAD_IN
      port map(PAD => clk2, Y => \clk2_pad/U0/NET1\);
    
    \data_out[7]\ : DFN1E1
      port map(D => \dmuxout[7]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[7]\);
    
    \data_out[4]\ : DFN1E1
      port map(D => \dmuxout[4]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[4]\);
    
    wrptrd2_RNO : NOR2A
      port map(A => \wrptrd1\, B => wrptrclr_c, Y => 
        \wrptrd2_RNO\);
    
    \reg_array.fifo_0[7]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[7]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[7]\);
    
    \reg_array.fifo_0[5]/U0\ : MX2
      port map(A => \reg_array.fifo_0[5]\, B => \data_in_c[5]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[5]/Y\);
    
    \reg_array.fifo_1[4]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[4]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[4]\);
    
    \reg_array.fifo_1[0]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[0]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[0]\);
    
    \data_out_RNO[2]\ : MX2
      port map(A => \reg_array.fifo_0[2]\, B => 
        \reg_array.fifo_1[2]\, S => rdptr, Y => \dmuxout[2]\);
    
    \data_out_pad[4]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[4]\, E => \VCC\, DOUT => 
        \data_out_pad[4]/U0/NET1\, EOUT => 
        \data_out_pad[4]/U0/NET2\);
    
    \data_out_pad[4]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[4]/U0/NET1\, E => 
        \data_out_pad[4]/U0/NET2\, PAD => data_out(4));
    
    rptrd1 : DFN1
      port map(D => \rptrd1_RNO\, CLK => clk1_c, Q => \rptrd1\);
    
    \empty_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => empty_c, E => \VCC\, DOUT => 
        \empty_pad/U0/NET1\, EOUT => \empty_pad/U0/NET2\);
    
    \reg_array.fifo_0[4]/U0\ : MX2
      port map(A => \reg_array.fifo_0[4]\, B => \data_in_c[4]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[4]/Y\);
    
    \reg_array.fifo_1[7]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[7]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[7]\);
    
    \data_in_pad[6]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(6), Y => \data_in_pad[6]/U0/NET1\);
    
    \data_in_pad[5]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(5), Y => \data_in_pad[5]/U0/NET1\);
    
    wr_pad_RNIS489 : NOR2B
      port map(A => wrptr, B => wr_c, Y => fifo_1_0_sqmuxa);
    
    \reg_array.fifo_1[2]/U0\ : MX2
      port map(A => \reg_array.fifo_1[2]\, B => \data_in_c[2]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[2]/Y\);
    
    \reg_array.fifo_0[5]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[5]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[5]\);
    
    i_empty : DFN1P1
      port map(D => \detEmpty.un1_wrptrd2\, CLK => clk2_c, PRE
         => rst_c, Q => empty_c);
    
    \data_out_pad[5]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[5]\, E => \VCC\, DOUT => 
        \data_out_pad[5]/U0/NET1\, EOUT => 
        \data_out_pad[5]/U0/NET2\);
    
    \data_out_pad[5]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[5]/U0/NET1\, E => 
        \data_out_pad[5]/U0/NET2\, PAD => data_out(5));
    
    \reg_array.fifo_1[3]/U0\ : MX2
      port map(A => \reg_array.fifo_1[3]\, B => \data_in_c[3]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[3]/Y\);
    
    \data_out[5]\ : DFN1E1
      port map(D => \dmuxout[5]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[5]\);
    
    wrptrd2 : DFN1
      port map(D => \wrptrd2_RNO\, CLK => clk2_c, Q => \wrptrd2\);
    
    \reg_array.fifo_1[5]/U0\ : MX2
      port map(A => \reg_array.fifo_1[5]\, B => \data_in_c[5]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[5]/Y\);
    
    i_full_RNO : XA1C
      port map(A => wrptr, B => \rptrd2\, C => full_c, Y => 
        \detFull.un7_wrptr\);
    
    \clk1_pad/U0/U0\ : IOPAD_IN
      port map(PAD => clk1, Y => \clk1_pad/U0/NET1\);
    
    rptrd2 : DFN1
      port map(D => \rptrd2_RNO\, CLK => clk1_c, Q => \rptrd2\);
    
    \data_out_pad[6]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[6]\, E => \VCC\, DOUT => 
        \data_out_pad[6]/U0/NET1\, EOUT => 
        \data_out_pad[6]/U0/NET2\);
    
    \data_out_pad[6]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[6]/U0/NET1\, E => 
        \data_out_pad[6]/U0/NET2\, PAD => data_out(6));
    
    \reg_array.fifo_0[7]/U0\ : MX2
      port map(A => \reg_array.fifo_0[7]\, B => \data_in_c[7]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[7]/Y\);
    
    \data_out[0]\ : DFN1E1
      port map(D => \dmuxout[0]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[0]\);
    
    wrptrd1_RNO : NOR2A
      port map(A => wrptr, B => wrptrclr_c, Y => \wrptrd1_RNO\);
    
    \data_in_pad[0]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(0), Y => \data_in_pad[0]/U0/NET1\);
    
    rdptr_RNO : NOR2
      port map(A => rdptrclr_c, B => rdptr, Y => 
        \read_count.rdptr_3\);
    
    \data_out_RNO[0]\ : MX2
      port map(A => \reg_array.fifo_0[0]\, B => 
        \reg_array.fifo_1[0]\, S => rdptr, Y => \dmuxout[0]\);
    
    rptrd2_RNO : NOR2A
      port map(A => \rptrd1\, B => rdptrclr_c, Y => \rptrd2_RNO\);
    
    \reg_array.fifo_0[0]/U0\ : MX2
      port map(A => \reg_array.fifo_0[0]\, B => \data_in_c[0]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[0]/Y\);
    
    \full_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => full_c, E => \VCC\, DOUT => 
        \full_pad/U0/NET1\, EOUT => \full_pad/U0/NET2\);
    
    \data_out_RNO[3]\ : MX2
      port map(A => \reg_array.fifo_0[3]\, B => 
        \reg_array.fifo_1[3]\, S => rdptr, Y => \dmuxout[3]\);
    
    \data_out_RNO[6]\ : MX2
      port map(A => \reg_array.fifo_0[6]\, B => 
        \reg_array.fifo_1[6]\, S => rdptr, Y => \dmuxout[6]\);
    
    \data_out[2]\ : DFN1E1
      port map(D => \dmuxout[2]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[2]\);
    
    \reg_array.fifo_1[5]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[5]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[5]\);
    
    \reg_array.fifo_0[6]/U0\ : MX2
      port map(A => \reg_array.fifo_0[6]\, B => \data_in_c[6]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[6]/Y\);
    
    \data_out[6]\ : DFN1E1
      port map(D => \dmuxout[6]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[6]\);
    
    \reg_array.fifo_1[6]/U0\ : MX2
      port map(A => \reg_array.fifo_1[6]\, B => \data_in_c[6]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[6]/Y\);
    
    \rd_pad/U0/U0\ : IOPAD_IN
      port map(PAD => rd, Y => \rd_pad/U0/NET1\);
    
    \empty_pad/U0/U0\ : IOPAD_TRI
      port map(D => \empty_pad/U0/NET1\, E => \empty_pad/U0/NET2\, 
        PAD => empty);
    
    \wr_pad/U0/U1\ : IOIN_IB
      port map(YIN => \wr_pad/U0/NET1\, Y => wr_c);
    
    \wrptrclr_pad/U0/U1\ : IOIN_IB
      port map(YIN => \wrptrclr_pad/U0/NET1\, Y => wrptrclr_c);
    
    \reg_array.fifo_0[3]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[3]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[3]\);
    
    \data_out_RNO[4]\ : MX2
      port map(A => \reg_array.fifo_0[4]\, B => 
        \reg_array.fifo_1[4]\, S => rdptr, Y => \dmuxout[4]\);
    
    \data_in_pad[6]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[6]/U0/NET1\, Y => 
        \data_in_c[6]\);
    
    \data_in_pad[5]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[5]/U0/NET1\, Y => 
        \data_in_c[5]\);
    
    \data_out_RNO[7]\ : MX2
      port map(A => \reg_array.fifo_0[7]\, B => 
        \reg_array.fifo_1[7]\, S => rdptr, Y => \dmuxout[7]\);
    
    \data_out_pad[0]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[0]\, E => \VCC\, DOUT => 
        \data_out_pad[0]/U0/NET1\, EOUT => 
        \data_out_pad[0]/U0/NET2\);
    
    \data_out_pad[0]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[0]/U0/NET1\, E => 
        \data_out_pad[0]/U0/NET2\, PAD => data_out(0));
    
    \reg_array.fifo_0[2]/U0\ : MX2
      port map(A => \reg_array.fifo_0[2]\, B => \data_in_c[2]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[2]/Y\);
    
    \data_out_pad[7]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[7]\, E => \VCC\, DOUT => 
        \data_out_pad[7]/U0/NET1\, EOUT => 
        \data_out_pad[7]/U0/NET2\);
    
    \data_out_pad[7]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[7]/U0/NET1\, E => 
        \data_out_pad[7]/U0/NET2\, PAD => data_out(7));
    
    \data_in_pad[4]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(4), Y => \data_in_pad[4]/U0/NET1\);
    
    \wrptrclr_pad/U0/U0\ : IOPAD_IN
      port map(PAD => wrptrclr, Y => \wrptrclr_pad/U0/NET1\);
    
    \reg_array.fifo_0[1]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[1]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[1]\);
    
    \reg_array.fifo_1[1]/U0\ : MX2
      port map(A => \reg_array.fifo_1[1]\, B => \data_in_c[1]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[1]/Y\);
    
    i_empty_RNO : XA1A
      port map(A => \wrptrd2\, B => rdptr, C => empty_c, Y => 
        \detEmpty.un1_wrptrd2\);
    
    \reg_array.fifo_1[6]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_1[6]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_1[6]\);
    
    \reg_array.fifo_0[1]/U0\ : MX2
      port map(A => \reg_array.fifo_0[1]\, B => \data_in_c[1]\, S
         => \fifo_0_0_sqmuxa\, Y => \reg_array_fifo_0[1]/Y\);
    
    \data_in_pad[0]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[0]/U0/NET1\, Y => 
        \data_in_c[0]\);
    
    \reg_array.fifo_1[4]/U0\ : MX2
      port map(A => \reg_array.fifo_1[4]\, B => \data_in_c[4]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[4]/Y\);
    
    \clk2_pad/U0/U1\ : CLKSRC
      port map(A => \clk2_pad/U0/NET1\, Y => clk2_c);
    
    \reg_array.fifo_0[4]/U1\ : DFN1C1
      port map(D => \reg_array_fifo_0[4]/Y\, CLK => clk1_c, CLR
         => rst_c, Q => \reg_array.fifo_0[4]\);
    
    \data_out[1]\ : DFN1E1
      port map(D => \dmuxout[1]\, CLK => clk2_c, E => rd_c, Q => 
        \data_out_c[1]\);
    
    \reg_array.fifo_1[7]/U0\ : MX2
      port map(A => \reg_array.fifo_1[7]\, B => \data_in_c[7]\, S
         => fifo_1_0_sqmuxa, Y => \reg_array_fifo_1[7]/Y\);
    
    \rdptrclr_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rdptrclr_pad/U0/NET1\, Y => rdptrclr_c);
    
    \data_out_RNO[5]\ : MX2
      port map(A => \reg_array.fifo_0[5]\, B => 
        \reg_array.fifo_1[5]\, S => rdptr, Y => \dmuxout[5]\);
    
    wrptr_RNO : NOR2
      port map(A => wrptrclr_c, B => wrptr, Y => 
        \write_count.wrptr_2\);
    
    \data_out_pad[2]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[2]\, E => \VCC\, DOUT => 
        \data_out_pad[2]/U0/NET1\, EOUT => 
        \data_out_pad[2]/U0/NET2\);
    
    \data_out_pad[2]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[2]/U0/NET1\, E => 
        \data_out_pad[2]/U0/NET2\, PAD => data_out(2));
    
    \data_in_pad[1]/U0/U0\ : IOPAD_IN
      port map(PAD => data_in(1), Y => \data_in_pad[1]/U0/NET1\);
    
    \wr_pad/U0/U0\ : IOPAD_IN
      port map(PAD => wr, Y => \wr_pad/U0/NET1\);
    
    \wrinc_pad/U0/U1\ : IOIN_IB
      port map(YIN => \wrinc_pad/U0/NET1\, Y => wrinc_c);
    
    rptrd1_RNO : NOR2A
      port map(A => rdptr, B => rdptrclr_c, Y => \rptrd1_RNO\);
    
    \data_out_RNO[1]\ : MX2
      port map(A => \reg_array.fifo_0[1]\, B => 
        \reg_array.fifo_1[1]\, S => rdptr, Y => \dmuxout[1]\);
    
    \data_out_pad[3]/U0/U1\ : IOTRI_OB_EB
      port map(D => \data_out_c[3]\, E => \VCC\, DOUT => 
        \data_out_pad[3]/U0/NET1\, EOUT => 
        \data_out_pad[3]/U0/NET2\);
    
    \data_out_pad[3]/U0/U0\ : IOPAD_TRI
      port map(D => \data_out_pad[3]/U0/NET1\, E => 
        \data_out_pad[3]/U0/NET2\, PAD => data_out(3));
    
    \clk1_pad/U0/U1\ : CLKSRC
      port map(A => \clk1_pad/U0/NET1\, Y => clk1_c);
    
    \data_in_pad[4]/U0/U1\ : IOIN_IB
      port map(YIN => \data_in_pad[4]/U0/NET1\, Y => 
        \data_in_c[4]\);
    
    \wrinc_pad/U0/U0\ : IOPAD_IN
      port map(PAD => wrinc, Y => \wrinc_pad/U0/NET1\);
    
    \rdinc_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rdinc_pad/U0/NET1\, Y => rdinc_c);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
