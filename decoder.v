module decoder(in, out);
input [2:0] in;
output [7:0] out;

assign out[0] = (in == 3'd0) ? 1 : 0;
assign out[1] = (in == 3'd1) ? 1 : 0;			
assign out[2] = (in == 3'd2) ? 1 : 0;
assign out[3] = (in == 3'd3) ? 1 : 0;
assign out[4] = (in == 3'd4) ? 1 : 0;
assign out[5] = (in == 3'd5) ? 1 : 0;
assign out[6] = (in == 3'd6) ? 1 : 0;
assign out[7] = (in == 3'd7) ? 1 : 0;
	
endmodule
