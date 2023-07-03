`timescale 1ns/1ns
module AccTB();
	reg clk=1'b0, rst=1'b0, start=1'b1;
	wire done;
	reg [15:0] x = 16'b0;
	wire [15:0] fracpart;
	wire [1:0] intpart;
	exponential inst(.clk(clk), .rst(rst), .start(start), .x(x), .done(done), .intpart(intpart), .fracpart(fracpart));
	initial repeat(10000) #50 clk = ~clk;
	initial begin
	#220 start = 1'b0;
	#300 x = 16'b1111111111111111;
	#3000 start = 1'b1;
	#100 start = 1'b0;
	#300 x = 16'b1000000000000000;
	#3000 start = 1'b1;
	#100 start = 1'b0;
	end
endmodule