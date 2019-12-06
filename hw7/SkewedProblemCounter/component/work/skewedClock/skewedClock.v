//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Nov 03 15:19:06 2019
// Version: v11.8 11.8.0.26
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// skewedClock
module skewedClock(
    // Inputs
    CLK,
    PRE,
    // Outputs
    sQ0,
    sQ1,
    sQ2,
    sQ3
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK;
input  PRE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output sQ0;
output sQ1;
output sQ2;
output sQ3;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK;
wire   INV_0_Y;
wire   INV_1_Y;
wire   INV_2_Y;
wire   INV_3_Y;
wire   PRE;
wire   sQ0_net_0;
wire   sQ1_net_0;
wire   sQ2_net_0;
wire   sQ3_net_0;
wire   sQ1_net_1;
wire   sQ2_net_1;
wire   sQ3_net_1;
wire   sQ0_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign sQ1_net_1 = sQ1_net_0;
assign sQ1       = sQ1_net_1;
assign sQ2_net_1 = sQ2_net_0;
assign sQ2       = sQ2_net_1;
assign sQ3_net_1 = sQ3_net_0;
assign sQ3       = sQ3_net_1;
assign sQ0_net_1 = sQ0_net_0;
assign sQ0       = sQ0_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------DFN1P0
DFN1P0 DFN1P0_0(
        // Inputs
        .D   ( INV_0_Y ),
        .CLK ( CLK ),
        .PRE ( PRE ),
        // Outputs
        .Q   ( sQ0_net_0 ) 
        );

//--------DFN1P0
DFN1P0 DFN1P0_1(
        // Inputs
        .D   ( INV_1_Y ),
        .CLK ( sQ0_net_0 ),
        .PRE ( PRE ),
        // Outputs
        .Q   ( sQ1_net_0 ) 
        );

//--------DFN1P0
DFN1P0 DFN1P0_2(
        // Inputs
        .D   ( INV_3_Y ),
        .CLK ( sQ1_net_0 ),
        .PRE ( PRE ),
        // Outputs
        .Q   ( sQ2_net_0 ) 
        );

//--------DFN1P0
DFN1P0 DFN1P0_3(
        // Inputs
        .D   ( INV_2_Y ),
        .CLK ( sQ2_net_0 ),
        .PRE ( PRE ),
        // Outputs
        .Q   ( sQ3_net_0 ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( sQ0_net_0 ),
        // Outputs
        .Y ( INV_0_Y ) 
        );

//--------INV
INV INV_1(
        // Inputs
        .A ( sQ1_net_0 ),
        // Outputs
        .Y ( INV_1_Y ) 
        );

//--------INV
INV INV_2(
        // Inputs
        .A ( sQ3_net_0 ),
        // Outputs
        .Y ( INV_2_Y ) 
        );

//--------INV
INV INV_3(
        // Inputs
        .A ( sQ2_net_0 ),
        // Outputs
        .Y ( INV_3_Y ) 
        );


endmodule
