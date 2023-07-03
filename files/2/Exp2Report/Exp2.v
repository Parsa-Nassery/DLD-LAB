`timescale 1ns / 1ns
module Exp2(input push_button, clk, serIn, rst, output serOut, serOutValid, output [6:0] seg_out);
	wire clkEn;
	wire [3:0] count_out;
	OnePulser pb(.clkPB(push_button), .clk(clk), .PO(clkEn));
	SerTransmitter ser_trans(.clk(clk), .rst(rst), .clkEn(clkEn), .serIn(serIn), .serOut(serOut), .serOutValid(serOutValid), .count_out(count_out));
	SSD ssd(.count(count_out), .seg_out(seg_out));
endmodule