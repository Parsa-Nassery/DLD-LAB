`timescale 1ns / 1ns
module OnePulser(input clk, clkPB, output PO);
	
	reg [1:0] ns, ps;
  
	always @(ps, clkPB) begin
		ns = 2'b00;
		case(ps)
			2'b00 : ns= clkPB ? 2'b01 : 2'b00;
			2'b01 : ns= 2'b10;
			2'b10 : ns= ~clkPB ? 2'b00 : 2'b10;
			default : ns= 2'b00;
		endcase
	end
	
	always @(posedge clk) begin
        ps <= ns;
	end	
	assign PO = (ps==2'b01) ? 1'b1 : 1'b0;
endmodule