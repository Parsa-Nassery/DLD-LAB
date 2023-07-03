`timescale 1ns / 1ns
module transTB();
	reg clk = 1'b0, PB = 1'b0, rst = 1'b0, clkEn = 1'b0, serIn = 1'b0;
	wire serOut, serOutValid;
	wire [3:0] count_out;
	SerTransmitter trans(.clk(clk), .rst(rst), .clkEn(clkEn), .serIn(serIn), .serOut(serOut), .serOutValid(serOutValid), .count_out(count_out));
	initial repeat(1000) #50 clk = ~clk;
	initial begin
		#25 clkEn = 1'b1;
		repeat(10) #100 serIn = $random();
		#100 serIn = 1'b0;
		#100 serIn = 1'b0;
		#100 serIn = 1'b1;
		#100 serIn = 1'b0;
		#100 clkEn = 1'b0;
		#100 serIn = 1'b1;
		#100 serIn = 1'b1;
		#100 clkEn = 1'b1;
		#100 serIn = 1'b1;
		#100 serIn = 1'b1;
		repeat(20) #100 serIn = $random();
	end
endmodule