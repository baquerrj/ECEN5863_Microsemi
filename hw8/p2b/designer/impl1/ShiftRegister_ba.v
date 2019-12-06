`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module ShiftRegister(
       data_in,
       clk,
       data_out
    );
input  data_in;
input  clk;
output [3:0] data_out;

    wire data_in_c, clk_c, \data_out_c[0] , \data_out_c[1] , 
        \data_out_c[2] , \data_out_c[3] , \data_in_pad/U0/NET1 , 
        \data_out_pad[2]/U0/NET1 , \data_out_pad[2]/U0/NET2 , 
        \data_out_pad[0]/U0/NET1 , \data_out_pad[0]/U0/NET2 , 
        \data_out_pad[1]/U0/NET1 , \data_out_pad[1]/U0/NET2 , 
        \data_out_pad[3]/U0/NET1 , \data_out_pad[3]/U0/NET2 , VCC, 
        \clk_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \data_in_pad/U0/U0  (.PAD(data_in), .Y(
        \data_in_pad/U0/NET1 ));
    DFN1 \data_out[0]  (.D(data_in_c), .CLK(clk_c), .Q(\data_out_c[0] )
        );
    IOTRI_OB_EB \data_out_pad[1]/U0/U1  (.D(\data_out_c[1] ), .E(VCC), 
        .DOUT(\data_out_pad[1]/U0/NET1 ), .EOUT(
        \data_out_pad[1]/U0/NET2 ));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    IOPAD_TRI \data_out_pad[1]/U0/U0  (.D(\data_out_pad[1]/U0/NET1 ), 
        .E(\data_out_pad[1]/U0/NET2 ), .PAD(data_out[1]));
    IOTRI_OB_EB \data_out_pad[3]/U0/U1  (.D(\data_out_c[3] ), .E(VCC), 
        .DOUT(\data_out_pad[3]/U0/NET1 ), .EOUT(
        \data_out_pad[3]/U0/NET2 ));
    DFN1 \data_out[3]  (.D(\data_out_c[2] ), .CLK(clk_c), .Q(
        \data_out_c[3] ));
    IOIN_IB \data_in_pad/U0/U1  (.YIN(\data_in_pad/U0/NET1 ), .Y(
        data_in_c));
    IOPAD_TRI \data_out_pad[3]/U0/U0  (.D(\data_out_pad[3]/U0/NET1 ), 
        .E(\data_out_pad[3]/U0/NET2 ), .PAD(data_out[3]));
    DFN1 \data_out[1]  (.D(\data_out_c[0] ), .CLK(clk_c), .Q(
        \data_out_c[1] ));
    IOTRI_OB_EB \data_out_pad[0]/U0/U1  (.D(\data_out_c[0] ), .E(VCC), 
        .DOUT(\data_out_pad[0]/U0/NET1 ), .EOUT(
        \data_out_pad[0]/U0/NET2 ));
    IOTRI_OB_EB \data_out_pad[2]/U0/U1  (.D(\data_out_c[2] ), .E(VCC), 
        .DOUT(\data_out_pad[2]/U0/NET1 ), .EOUT(
        \data_out_pad[2]/U0/NET2 ));
    IOPAD_TRI \data_out_pad[0]/U0/U0  (.D(\data_out_pad[0]/U0/NET1 ), 
        .E(\data_out_pad[0]/U0/NET2 ), .PAD(data_out[0]));
    IOPAD_TRI \data_out_pad[2]/U0/U0  (.D(\data_out_pad[2]/U0/NET1 ), 
        .E(\data_out_pad[2]/U0/NET2 ), .PAD(data_out[2]));
    DFN1 \data_out[2]  (.D(\data_out_c[1] ), .CLK(clk_c), .Q(
        \data_out_c[2] ));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
