module CD3FF(
   input wire Aclk,     // 50 Mhz (fast)
   input wire Bclk,     // 27.7 MHz (slow)
   input wire reset,
   output reg Dout
);

// data from clock domain A
reg dataA = 1'b0;

// data locked in transfer interface
reg dataLocked = 1'b0;
// mux'd data
wire muxOut;
// synchronization signal
wire sync;

assign muxOut = sync ? dataA : dataLocked;

Synchronizer synchronizer(.clockS(Bclk),
                          .clockF(Aclk),
                          .reset(reset),
                          .sync(sync));

// data source toggle flip-flop
always @(posedge Aclk) begin
   if (reset)
      dataA <= 1'b0;
   else
      dataA <=  ~dataA;
end   

// data transfer interface is another flip-flop
always @(posedge Aclk) begin
   if (reset)
      dataLocked <= 1'b0;
   else
      dataLocked <= muxOut;
end

// data sink
always @(posedge Bclk) begin
   if (reset)
      Dout <= 1'b0;
   else
      Dout <= dataLocked;
end

endmodule

