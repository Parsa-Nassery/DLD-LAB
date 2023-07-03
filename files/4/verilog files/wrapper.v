module wrapper(input clk,rst,start,eng_done ,output reg done, eng_start, inc_count, output rst_count);
	reg [2:0] ps, ns;
	always@(ps,eng_done,start)begin
		ns = 3'd0;
		case(ps)
			3'd0: begin ns = (start)? 3'd1 : 3'd0; end
			3'd1: begin ns = (start)? 3'd1 : 3'd2; end
			3'd2: begin ns = 3'd3; end
			3'd3: begin ns = 3'd4; end
			3'd4: begin ns = (eng_done)? 3'd0 : 3'd4; end
		endcase
	end
	
	always@(ps)begin
		{inc_count, eng_start, done} = 3'd000; 
		case(ps)
			3'd0:begin
				done = 1'b1;
			end
			3'd2:begin
				inc_count = 1'b1;
			end
			3'd3:begin
				eng_start = 1'b1;
			end
		endcase
	end


	always@(posedge clk,posedge rst)begin
		if(rst == 1'b1)
			ps <= 3'd0;
		else
			ps <= ns;
	end
	assign rst_count = rst;
endmodule

