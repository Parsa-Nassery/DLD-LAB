`timescale 1ns / 1ns
module frequencyslct_tb();
  reg [2:0] sw = 3'b101;
  reg clk = 1'b0;
  wire carry_out;
  frequencyselect inst(.clk(clk), .sw(sw), .carry_out(carry_out));
  initial repeat(100000) #50 clk = ~clk;  
endmodule