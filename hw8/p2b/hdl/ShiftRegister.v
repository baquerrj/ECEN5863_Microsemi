module ShiftRegister(
   input  wire     data_in,
   input  wire     clk,
   output reg[3:0] data_out
);

always @(posedge clk) begin
   data_out <= data_out << 1;
   data_out[0] <= data_in;
end

endmodule

