-- Version: v11.8 11.8.0.26
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library smartfusion;
use smartfusion.all;

entity Counter is

    port( CLK   : in    std_logic;
          RESET : in    std_logic;
          CE    : in    std_logic;
          Q     : out   std_logic_vector(15 downto 0);
          TC    : out   std_logic
        );

end Counter;

architecture DEF_ARCH of Counter is 

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
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

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component XA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component AO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
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

  component OR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1C
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

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
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

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal CLK_c, RESET_c, CE_c, \Q_c[0]\, \Q_c[1]\, \Q_c[2]\, 
        \Q_c[3]\, \Q_c[4]\, \Q_c[5]\, \Q_c[6]\, \Q_c[7]\, 
        \Q_c[8]\, \Q_c[9]\, \Q_c[10]\, \Q_c[11]\, \Q_c[12]\, 
        \Q_c[13]\, \Q_c[14]\, \Q_c[15]\, \TC_pad_RNO\, counte, 
        count_n10, count_n9, N_14, N_16, N_18, N_20, N_22, N_24, 
        N_26, N_86_i, N_33, N_109, N_30, N_29, N_40, N_90, N_93, 
        N_94, N_87, count_n11, count_n12, count_n13, count_n14, 
        count_n15, count_n10_0_o2_N_11_mux, count_n9_0_o2_N_9_mux, 
        count_n5_i_o2_N_3_mux, count_n13_0_o2_N_3_mux, 
        count_n8_i_N_8_mux, count_n8_i_N_7_mux_i_0, 
        count_n7_i_60_N_4_mux, \count_n9_0_o2_m4_0_a2_2\, 
        \count_n9_0_o2_m4_0_a2_3\, \count_n9_0_o2_m4_0_a2_4\, 
        \count_n5_i_o2_m1_0_a2_1\, \count_n10_0_o2_m5_0_a2_1\, 
        \count_n10_0_o2_m5_0_a2_4\, \count_n10_0_o2_m5_0_a2_5\, 
        \count_n8_i_m2_i_a3_1\, \count_n7_i_60_m1_0_a2_0\, 
        \count_n13_0_o2_m1_0_a2_0\, \count_n14_0_o2_m1_0_a2_1\, 
        \count_n14_0_o2_m1_0_a2_2\, count_n13_0_a2_0, 
        \count_n13_0_a2_0_0\, \count_n14_0_a2_0\, 
        \count_n14_0_a2_0_0\, \count_n11_0_a2_0_0\, 
        count_n11_0_a2_0, \count_n12_0_a2_0_0\, count_n12_0_a2_0, 
        \count_n15_0_a2_0_0\, count_n15_0_a2_0, 
        \Q_pad[12]/U0/NET1\, \Q_pad[12]/U0/NET2\, 
        \Q_pad[4]/U0/NET1\, \Q_pad[4]/U0/NET2\, \CE_pad/U0/NET1\, 
        \Q_pad[9]/U0/NET1\, \Q_pad[9]/U0/NET2\, 
        \Q_pad[2]/U0/NET1\, \Q_pad[2]/U0/NET2\, 
        \Q_pad[14]/U0/NET1\, \Q_pad[14]/U0/NET2\, 
        \Q_pad[10]/U0/NET1\, \Q_pad[10]/U0/NET2\, 
        \Q_pad[5]/U0/NET1\, \Q_pad[5]/U0/NET2\, 
        \Q_pad[6]/U0/NET1\, \Q_pad[6]/U0/NET2\, 
        \Q_pad[15]/U0/NET1\, \Q_pad[15]/U0/NET2\, 
        \RESET_pad/U0/NET1\, \Q_pad[8]/U0/NET1\, 
        \Q_pad[8]/U0/NET2\, \Q_pad[3]/U0/NET1\, 
        \Q_pad[3]/U0/NET2\, \Q_pad[1]/U0/NET1\, 
        \Q_pad[1]/U0/NET2\, \Q_pad[11]/U0/NET1\, 
        \Q_pad[11]/U0/NET2\, \Q_pad[0]/U0/NET1\, 
        \Q_pad[0]/U0/NET2\, \Q_pad[13]/U0/NET1\, 
        \Q_pad[13]/U0/NET2\, \Q_pad[7]/U0/NET1\, 
        \Q_pad[7]/U0/NET2\, \TC_pad/U0/NET1\, \TC_pad/U0/NET2\, 
        \VCC\, \CLK_pad/U0/NET1\, AFLSDF_VCC, AFLSDF_GND
         : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    AFLSDF_GND <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    count_n15_0_a2_0_1 : NOR2B
      port map(A => RESET_c, B => \Q_c[15]\, Y => 
        count_n15_0_a2_0);
    
    count_n15_0_a2_0_0 : NOR3B
      port map(A => RESET_c, B => \Q_c[9]\, C => \Q_c[15]\, Y => 
        \count_n15_0_a2_0_0\);
    
    count_n11_0 : MX2
      port map(A => \count_n11_0_a2_0_0\, B => count_n11_0_a2_0, 
        S => N_40, Y => count_n11);
    
    \count[5]\ : DFN1E1
      port map(D => N_18, CLK => CLK_c, E => counte, Q => 
        \Q_c[5]\);
    
    \count[1]\ : DFN1E1
      port map(D => N_26, CLK => CLK_c, E => counte, Q => 
        \Q_c[1]\);
    
    \Q_pad[14]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[14]\, E => \VCC\, DOUT => 
        \Q_pad[14]/U0/NET1\, EOUT => \Q_pad[14]/U0/NET2\);
    
    count_n1_i : XA1
      port map(A => \Q_c[0]\, B => \Q_c[1]\, C => RESET_c, Y => 
        N_26);
    
    \count[10]\ : DFN1E1
      port map(D => count_n10, CLK => CLK_c, E => counte, Q => 
        \Q_c[10]\);
    
    \count[0]\ : DFN1E1
      port map(D => N_86_i, CLK => CLK_c, E => counte, Q => 
        \Q_c[0]\);
    
    \Q_pad[15]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[15]/U0/NET1\, E => \Q_pad[15]/U0/NET2\, 
        PAD => Q(15));
    
    \count[14]\ : DFN1E1
      port map(D => count_n14, CLK => CLK_c, E => counte, Q => 
        \Q_c[14]\);
    
    \Q_pad[11]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[11]/U0/NET1\, E => \Q_pad[11]/U0/NET2\, 
        PAD => Q(11));
    
    count_n12_0_o2 : OR2A
      port map(A => \Q_c[11]\, B => N_40, Y => N_87);
    
    \Q_pad[0]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[0]\, E => \VCC\, DOUT => 
        \Q_pad[0]/U0/NET1\, EOUT => \Q_pad[0]/U0/NET2\);
    
    count_n6_i_o2 : OR2B
      port map(A => \Q_c[5]\, B => count_n5_i_o2_N_3_mux, Y => 
        N_33);
    
    count_n14_0_a2_0_0_0 : NOR3B
      port map(A => RESET_c, B => \Q_c[9]\, C => \Q_c[14]\, Y => 
        \count_n14_0_a2_0_0\);
    
    \Q_pad[7]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[7]\, E => \VCC\, DOUT => 
        \Q_pad[7]/U0/NET1\, EOUT => \Q_pad[7]/U0/NET2\);
    
    count_n15_0 : MX2
      port map(A => \count_n15_0_a2_0_0\, B => count_n15_0_a2_0, 
        S => N_90, Y => count_n15);
    
    \CE_pad/U0/U0\ : IOPAD_IN
      port map(PAD => CE, Y => \CE_pad/U0/NET1\);
    
    count_n9_0_o2_m4_0_a2 : NOR3B
      port map(A => \count_n9_0_o2_m4_0_a2_4\, B => 
        \count_n9_0_o2_m4_0_a2_3\, C => N_29, Y => 
        count_n9_0_o2_N_9_mux);
    
    \Q_pad[10]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[10]/U0/NET1\, E => \Q_pad[10]/U0/NET2\, 
        PAD => Q(10));
    
    \Q_pad[1]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[1]\, E => \VCC\, DOUT => 
        \Q_pad[1]/U0/NET1\, EOUT => \Q_pad[1]/U0/NET2\);
    
    count_n8_i_m2_i : AO1
      port map(A => \count_n8_i_m2_i_a3_1\, B => 
        count_n5_i_o2_N_3_mux, C => \Q_c[8]\, Y => 
        count_n8_i_N_7_mux_i_0);
    
    count_n14_0_a2_0 : NOR3C
      port map(A => count_n10_0_o2_N_11_mux, B => 
        \count_n14_0_o2_m1_0_a2_2\, C => \count_n14_0_a2_0_0\, Y
         => N_94);
    
    count_n14_0_a2 : AOI1B
      port map(A => \count_n14_0_o2_m1_0_a2_2\, B => 
        count_n10_0_o2_N_11_mux, C => \count_n14_0_a2_0\, Y => 
        N_93);
    
    countlde : OR2A
      port map(A => RESET_c, B => CE_c, Y => counte);
    
    \Q_pad[3]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[3]/U0/NET1\, E => \Q_pad[3]/U0/NET2\, 
        PAD => Q(3));
    
    count_n5_i : XA1
      port map(A => count_n5_i_o2_N_3_mux, B => \Q_c[5]\, C => 
        RESET_c, Y => N_18);
    
    count_n14_0_a2_0_0 : NOR2B
      port map(A => RESET_c, B => \Q_c[14]\, Y => 
        \count_n14_0_a2_0\);
    
    \Q_pad[2]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[2]\, E => \VCC\, DOUT => 
        \Q_pad[2]/U0/NET1\, EOUT => \Q_pad[2]/U0/NET2\);
    
    \Q_pad[12]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[12]/U0/NET1\, E => \Q_pad[12]/U0/NET2\, 
        PAD => Q(12));
    
    count_n13_0_o2_m1_0_a2_0 : NOR2B
      port map(A => \Q_c[12]\, B => \Q_c[11]\, Y => 
        \count_n13_0_o2_m1_0_a2_0\);
    
    count_n0_i_a2 : NOR2A
      port map(A => RESET_c, B => \Q_c[0]\, Y => N_86_i);
    
    \count[8]\ : DFN1E1
      port map(D => count_n8_i_N_8_mux, CLK => CLK_c, E => counte, 
        Q => \Q_c[8]\);
    
    count_n8_i_m4 : NOR3B
      port map(A => RESET_c, B => count_n8_i_N_7_mux_i_0, C => 
        count_n9_0_o2_N_9_mux, Y => count_n8_i_N_8_mux);
    
    \Q_pad[6]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[6]/U0/NET1\, E => \Q_pad[6]/U0/NET2\, 
        PAD => Q(6));
    
    count_n14_0 : OR2
      port map(A => N_93, B => N_94, Y => count_n14);
    
    \Q_pad[5]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[5]\, E => \VCC\, DOUT => 
        \Q_pad[5]/U0/NET1\, EOUT => \Q_pad[5]/U0/NET2\);
    
    count_n9_0 : XA1
      port map(A => \Q_c[9]\, B => count_n9_0_o2_N_9_mux, C => 
        RESET_c, Y => count_n9);
    
    count_n13_0_a2_0_0 : NOR2B
      port map(A => RESET_c, B => \Q_c[13]\, Y => 
        count_n13_0_a2_0);
    
    \Q_pad[14]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[14]/U0/NET1\, E => \Q_pad[14]/U0/NET2\, 
        PAD => Q(14));
    
    count_n2_i_o2 : OR2B
      port map(A => \Q_c[1]\, B => \Q_c[0]\, Y => N_29);
    
    count_n10_0_o2_m5_0_a2_4 : NOR3C
      port map(A => \Q_c[8]\, B => \Q_c[9]\, C => 
        \count_n10_0_o2_m5_0_a2_1\, Y => 
        \count_n10_0_o2_m5_0_a2_4\);
    
    \count[15]\ : DFN1E1
      port map(D => count_n15, CLK => CLK_c, E => counte, Q => 
        \Q_c[15]\);
    
    \Q_pad[4]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[4]\, E => \VCC\, DOUT => 
        \Q_pad[4]/U0/NET1\, EOUT => \Q_pad[4]/U0/NET2\);
    
    \count[11]\ : DFN1E1
      port map(D => count_n11, CLK => CLK_c, E => counte, Q => 
        \Q_c[11]\);
    
    count_n15_0_o2 : OR3C
      port map(A => count_n10_0_o2_N_11_mux, B => 
        \count_n14_0_o2_m1_0_a2_2\, C => \Q_c[14]\, Y => N_90);
    
    count_n9_0_o2_m4_0_a2_2 : NOR2B
      port map(A => \Q_c[2]\, B => \Q_c[5]\, Y => 
        \count_n9_0_o2_m4_0_a2_2\);
    
    count_n8_i_m2_i_a3_1 : NOR3C
      port map(A => \Q_c[6]\, B => \Q_c[7]\, C => \Q_c[5]\, Y => 
        \count_n8_i_m2_i_a3_1\);
    
    \count[13]\ : DFN1E1
      port map(D => count_n13, CLK => CLK_c, E => counte, Q => 
        \Q_c[13]\);
    
    \Q_pad[8]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[8]\, E => \VCC\, DOUT => 
        \Q_pad[8]/U0/NET1\, EOUT => \Q_pad[8]/U0/NET2\);
    
    \Q_pad[13]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[13]\, E => \VCC\, DOUT => 
        \Q_pad[13]/U0/NET1\, EOUT => \Q_pad[13]/U0/NET2\);
    
    count_n13_0_a2_0_0_0 : NOR3B
      port map(A => RESET_c, B => \Q_c[9]\, C => \Q_c[13]\, Y => 
        \count_n13_0_a2_0_0\);
    
    count_n11_0_a2_0_1 : NOR2B
      port map(A => RESET_c, B => \Q_c[11]\, Y => 
        count_n11_0_a2_0);
    
    count_n11_0_a2_0_0 : NOR3B
      port map(A => RESET_c, B => \Q_c[9]\, C => \Q_c[11]\, Y => 
        \count_n11_0_a2_0_0\);
    
    \count[2]\ : DFN1E1
      port map(D => N_24, CLK => CLK_c, E => counte, Q => 
        \Q_c[2]\);
    
    \Q_pad[0]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[0]/U0/NET1\, E => \Q_pad[0]/U0/NET2\, 
        PAD => Q(0));
    
    count_n12_0 : MX2
      port map(A => \count_n12_0_a2_0_0\, B => count_n12_0_a2_0, 
        S => N_87, Y => count_n12);
    
    count_n7_i_60_m1_0_a2_0 : NOR2B
      port map(A => \Q_c[6]\, B => \Q_c[5]\, Y => 
        \count_n7_i_60_m1_0_a2_0\);
    
    count_n9_0_o2_m4_0_a2_3 : NOR3C
      port map(A => \Q_c[4]\, B => \Q_c[8]\, C => \Q_c[6]\, Y => 
        \count_n9_0_o2_m4_0_a2_3\);
    
    count_n4_i_a2 : OA1C
      port map(A => \Q_c[3]\, B => N_30, C => \Q_c[4]\, Y => 
        N_109);
    
    \CLK_pad/U0/U1\ : CLKSRC
      port map(A => \CLK_pad/U0/NET1\, Y => CLK_c);
    
    \Q_pad[7]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[7]/U0/NET1\, E => \Q_pad[7]/U0/NET2\, 
        PAD => Q(7));
    
    count_n10_0_o2_m5_0_a2 : NOR3B
      port map(A => \count_n10_0_o2_m5_0_a2_5\, B => 
        \count_n10_0_o2_m5_0_a2_4\, C => N_29, Y => 
        count_n10_0_o2_N_11_mux);
    
    \RESET_pad/U0/U1\ : IOIN_IB
      port map(YIN => \RESET_pad/U0/NET1\, Y => RESET_c);
    
    \Q_pad[9]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[9]\, E => \VCC\, DOUT => 
        \Q_pad[9]/U0/NET1\, EOUT => \Q_pad[9]/U0/NET2\);
    
    \count[9]\ : DFN1E1
      port map(D => count_n9, CLK => CLK_c, E => counte, Q => 
        \Q_c[9]\);
    
    \Q_pad[1]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[1]/U0/NET1\, E => \Q_pad[1]/U0/NET2\, 
        PAD => Q(1));
    
    count_n7_i_60_m1_0_a2 : NOR2B
      port map(A => \count_n7_i_60_m1_0_a2_0\, B => 
        count_n5_i_o2_N_3_mux, Y => count_n7_i_60_N_4_mux);
    
    count_n11_0_o2 : OR2B
      port map(A => count_n10_0_o2_N_11_mux, B => \Q_c[10]\, Y
         => N_40);
    
    \TC_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \TC_pad_RNO\, E => \VCC\, DOUT => 
        \TC_pad/U0/NET1\, EOUT => \TC_pad/U0/NET2\);
    
    \TC_pad/U0/U0\ : IOPAD_TRI
      port map(D => \TC_pad/U0/NET1\, E => \TC_pad/U0/NET2\, PAD
         => TC);
    
    \Q_pad[2]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[2]/U0/NET1\, E => \Q_pad[2]/U0/NET2\, 
        PAD => Q(2));
    
    count_n3_i : XA1A
      port map(A => N_30, B => \Q_c[3]\, C => RESET_c, Y => N_22);
    
    \RESET_pad/U0/U0\ : IOPAD_IN
      port map(PAD => RESET, Y => \RESET_pad/U0/NET1\);
    
    count_n2_i : XA1A
      port map(A => N_29, B => \Q_c[2]\, C => RESET_c, Y => N_24);
    
    count_n13_0 : MX2
      port map(A => count_n13_0_a2_0, B => \count_n13_0_a2_0_0\, 
        S => count_n13_0_o2_N_3_mux, Y => count_n13);
    
    count_n13_0_o2_m1_0_a2 : NOR3C
      port map(A => \count_n13_0_o2_m1_0_a2_0\, B => \Q_c[10]\, C
         => count_n10_0_o2_N_11_mux, Y => count_n13_0_o2_N_3_mux);
    
    \count[6]\ : DFN1E1
      port map(D => N_16, CLK => CLK_c, E => counte, Q => 
        \Q_c[6]\);
    
    count_n14_0_o2_m1_0_a2_2 : NOR3C
      port map(A => \Q_c[12]\, B => \Q_c[13]\, C => 
        \count_n14_0_o2_m1_0_a2_1\, Y => 
        \count_n14_0_o2_m1_0_a2_2\);
    
    count_n10_0_o2_m5_0_a2_5 : NOR3C
      port map(A => \Q_c[2]\, B => \Q_c[3]\, C => 
        \count_n7_i_60_m1_0_a2_0\, Y => 
        \count_n10_0_o2_m5_0_a2_5\);
    
    count_n10_0 : XA1
      port map(A => \Q_c[10]\, B => count_n10_0_o2_N_11_mux, C
         => RESET_c, Y => count_n10);
    
    \CLK_pad/U0/U0\ : IOPAD_IN
      port map(PAD => CLK, Y => \CLK_pad/U0/NET1\);
    
    \Q_pad[5]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[5]/U0/NET1\, E => \Q_pad[5]/U0/NET2\, 
        PAD => Q(5));
    
    TC_pad_RNO : NOR3B
      port map(A => \Q_c[15]\, B => CE_c, C => N_90, Y => 
        \TC_pad_RNO\);
    
    count_n5_i_o2_m1_0_a2_1 : NOR3C
      port map(A => \Q_c[3]\, B => \Q_c[4]\, C => \Q_c[2]\, Y => 
        \count_n5_i_o2_m1_0_a2_1\);
    
    count_n12_0_a2_0_1 : NOR2B
      port map(A => RESET_c, B => \Q_c[12]\, Y => 
        count_n12_0_a2_0);
    
    count_n12_0_a2_0_0 : NOR3B
      port map(A => RESET_c, B => \Q_c[9]\, C => \Q_c[12]\, Y => 
        \count_n12_0_a2_0_0\);
    
    \count[3]\ : DFN1E1
      port map(D => N_22, CLK => CLK_c, E => counte, Q => 
        \Q_c[3]\);
    
    \Q_pad[4]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[4]/U0/NET1\, E => \Q_pad[4]/U0/NET2\, 
        PAD => Q(4));
    
    \Q_pad[13]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[13]/U0/NET1\, E => \Q_pad[13]/U0/NET2\, 
        PAD => Q(13));
    
    count_n4_i : NOR3A
      port map(A => RESET_c, B => count_n5_i_o2_N_3_mux, C => 
        N_109, Y => N_20);
    
    count_n6_i : XA1A
      port map(A => N_33, B => \Q_c[6]\, C => RESET_c, Y => N_16);
    
    \Q_pad[15]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[15]\, E => \VCC\, DOUT => 
        \Q_pad[15]/U0/NET1\, EOUT => \Q_pad[15]/U0/NET2\);
    
    \Q_pad[8]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[8]/U0/NET1\, E => \Q_pad[8]/U0/NET2\, 
        PAD => Q(8));
    
    \Q_pad[11]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[11]\, E => \VCC\, DOUT => 
        \Q_pad[11]/U0/NET1\, EOUT => \Q_pad[11]/U0/NET2\);
    
    count_n7_i : XA1
      port map(A => count_n7_i_60_N_4_mux, B => \Q_c[7]\, C => 
        RESET_c, Y => N_14);
    
    \Q_pad[3]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[3]\, E => \VCC\, DOUT => 
        \Q_pad[3]/U0/NET1\, EOUT => \Q_pad[3]/U0/NET2\);
    
    count_n14_0_o2_m1_0_a2_1 : NOR2B
      port map(A => \Q_c[11]\, B => \Q_c[10]\, Y => 
        \count_n14_0_o2_m1_0_a2_1\);
    
    \Q_pad[10]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[10]\, E => \VCC\, DOUT => 
        \Q_pad[10]/U0/NET1\, EOUT => \Q_pad[10]/U0/NET2\);
    
    count_n10_0_o2_m5_0_a2_1 : NOR2B
      port map(A => \Q_c[4]\, B => \Q_c[7]\, Y => 
        \count_n10_0_o2_m5_0_a2_1\);
    
    \Q_pad[9]/U0/U0\ : IOPAD_TRI
      port map(D => \Q_pad[9]/U0/NET1\, E => \Q_pad[9]/U0/NET2\, 
        PAD => Q(9));
    
    count_n9_0_o2_m4_0_a2_4 : NOR3C
      port map(A => \Q_c[3]\, B => \Q_c[7]\, C => 
        \count_n9_0_o2_m4_0_a2_2\, Y => \count_n9_0_o2_m4_0_a2_4\);
    
    count_n5_i_o2_m1_0_a2 : NOR2A
      port map(A => \count_n5_i_o2_m1_0_a2_1\, B => N_29, Y => 
        count_n5_i_o2_N_3_mux);
    
    \Q_pad[6]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[6]\, E => \VCC\, DOUT => 
        \Q_pad[6]/U0/NET1\, EOUT => \Q_pad[6]/U0/NET2\);
    
    \count[4]\ : DFN1E1
      port map(D => N_20, CLK => CLK_c, E => counte, Q => 
        \Q_c[4]\);
    
    \CE_pad/U0/U1\ : IOIN_IB
      port map(YIN => \CE_pad/U0/NET1\, Y => CE_c);
    
    count_n3_i_o2 : OR2A
      port map(A => \Q_c[2]\, B => N_29, Y => N_30);
    
    \count[12]\ : DFN1E1
      port map(D => count_n12, CLK => CLK_c, E => counte, Q => 
        \Q_c[12]\);
    
    \Q_pad[12]/U0/U1\ : IOTRI_OB_EB
      port map(D => \Q_c[12]\, E => \VCC\, DOUT => 
        \Q_pad[12]/U0/NET1\, EOUT => \Q_pad[12]/U0/NET2\);
    
    \count[7]\ : DFN1E1
      port map(D => N_14, CLK => CLK_c, E => counte, Q => 
        \Q_c[7]\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
