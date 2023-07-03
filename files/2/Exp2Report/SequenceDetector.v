`timescale 1ns / 1ns
module SequenceDetector(input clk, rst, serIn, clkEn, co, output serOut, serOutValid, inc_cnt, rst_cnt);
  reg [2:0] ns, ps;
  
	always @(ps, serIn,co) begin
		ns = 3'b000;
		case(ps)
			3'b000 : ns= serIn ? 3'b001 : 3'b000;
			3'b001 : ns= serIn ? 3'b001 : 3'b010;
			3'b010 : ns= serIn ? 3'b011 : 3'b000;
			3'b011 : ns= serIn ? 3'b100 : 3'b010;
			3'b100 : ns= co ? 3'b000 : 3'b100;
			default : ns= 3'b000;
		endcase
	end
	
	assign rst_cnt = rst | (ps == 3'b000);
	assign serOut = (ps == 3'b100 && serIn == 1'b1) ? 1'b1 : 1'b0;
	assign serOutValid = (ps == 3'b100) ? 1'b1 : 1'b0;
	assign inc_cnt = (ps == 3'b100) ? 1'b1 : 1'b0;
	
	always @(posedge clk, posedge rst) begin
	  if(rst)
	    ps = 3'b000;
    else
      if (clkEn)
        ps <= ns;
	end
endmodule