`timescale 1ns / 1ns
module PWM_tb();
  reg clk = 1'b0;
  reg [7:0] data = 8'd20;
  wire PULSE_out;
  PWM inst(.clk(clk), .data(data), .out_pulse(PULSE_out));
  initial repeat(100000) #50 clk = ~clk;  
  initial begin
	#26000 data = 8'd128;
  end
endmodule