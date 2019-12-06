//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Nov 05 17:12:56 2019
// Version: v11.8 11.8.0.26
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top_level_counter
module top_level_counter(
    // Inputs
    CLK,
    CLR,
    PRE,
    // Outputs
    Q,
    TC,
    sQ0,
    sQ1,
    sQ2,
    sQ3
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input         CLR;
input         PRE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [15:0] Q;
output        TC;
output        sQ0;
output        sQ1;
output        sQ2;
output        sQ3;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire          CLR;
wire          PRE;
wire   [15:0] Q_net_0;
wire          sQ0_net_0;
wire          sQ1_net_0;
wire          sQ2_net_0;
wire          sQ3_net_0;
wire          TC_net_0;
wire          sQ0_net_1;
wire          sQ1_net_1;
wire          sQ2_net_1;
wire          sQ3_net_1;
wire          TC_net_1;
wire   [15:0] Q_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign sQ0_net_1 = sQ0_net_0;
assign sQ0       = sQ0_net_1;
assign sQ1_net_1 = sQ1_net_0;
assign sQ1       = sQ1_net_1;
assign sQ2_net_1 = sQ2_net_0;
assign sQ2       = sQ2_net_1;
assign sQ3_net_1 = sQ3_net_0;
assign sQ3       = sQ3_net_1;
assign TC_net_1  = TC_net_0;
assign TC        = TC_net_1;
assign Q_net_1   = Q_net_0;
assign Q[15:0]   = Q_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Skewed
Skewed Skewed_0(
        // Inputs
        .clk   ( CLK ),
        .reset ( CLR ),
        .sQ0   ( sQ0_net_0 ),
        .sQ1   ( sQ1_net_0 ),
        .sQ2   ( sQ2_net_0 ),
        .sQ3   ( sQ3_net_0 ),
        // Outputs
        .TC    ( TC_net_0 ),
        .Q     ( Q_net_0 ) 
        );

//--------skewedClock
skewedClock skewedClock_0(
        // Inputs
        .CLK ( CLK ),
        .PRE ( PRE ),
        // Outputs
        .sQ0 ( sQ0_net_0 ),
        .sQ1 ( sQ1_net_0 ),
        .sQ2 ( sQ2_net_0 ),
        .sQ3 ( sQ3_net_0 ) 
        );


endmodule
