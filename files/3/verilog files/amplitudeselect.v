`timescale 1 ns/ 1 ns
module amplitudeselect ( input [7:0] wave, input [1:0] sw ,output reg [7:0] out_wave);
	always@(sw, wave) begin
        case(sw)
		    2'b00:  out_wave = wave;
        2'b01:  out_wave = wave>>1;
        2'b10:  out_wave = wave>>2;
        2'b11:  out_wave = wave>>3;
        endcase
	end
endmodule 
