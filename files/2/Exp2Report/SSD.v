`timescale 1ns / 1ns
module SSD(input [3:0] count, output [6:0] seg_out);  	
	assign seg_out = ( count == 4'b0000 ) ? 7'b1000000 : 
					( count == 4'd1 ) ? 7'b1111001 :
					( count == 4'd2 ) ? 7'b0100100 :
					( count == 4'd3 ) ? 7'b0110000 :
					( count == 4'd4 ) ? 7'b0011001  :
					( count == 4'd5 ) ? 7'b0010010 :
					( count == 4'd6 ) ? 7'b0000010 :
					( count == 4'd7 ) ? 7'b1111000 :
					( count == 4'd8 ) ? 7'b0000000 :
					( count == 4'd9 ) ? 7'b0010000 :
					( count == 4'd10 ) ? 7'b0001000 :
					( count == 4'd11 ) ? 7'b0000011 :
					( count == 4'd12 ) ? 7'b1000110 :
					( count == 4'd13 ) ? 7'b0100001 :
					( count == 4'd14 ) ? 7'b0000110 :
					7'b0001110;
endmodule