module rrot_reg(in, shift, out);
parameter n=16;
input [n-1:0] in;
input [3:0] shift;
output [n-1:0] out;

assign out = (shift == 4'b0001)	? {in[0], in[n-1:1]} :
			 (shift == 4'b0010)	? {in[1:0], in[n-1:2]} :
			 (shift == 4'b0011)	? {in[2:0], in[n-1:3]} :
			 (shift == 4'b0100)	? {in[3:0], in[n-1:4]} :
			 (shift == 4'b0101)	? {in[4:0], in[n-1:5]} :
			 (shift == 4'b0110)	? {in[5:0], in[n-1:6]} :
			 (shift == 4'b0111)	? {in[6:0], in[n-1:7]} :
			 (shift == 4'b1000)	? {in[7:0], in[n-1:8]} :
			 (shift == 4'b1001)	? {in[8:0], in[n-1:9]} :
			 (shift == 4'b1010)	? {in[9:0], in[n-1:10]} :
			 (shift == 4'b1011)	? {in[10:0], in[n-1:11]} :
			 (shift == 4'b1100)	? {in[11:0], in[n-1:12]} :
			 (shift == 4'b1101)	? {in[12:0], in[n-1:13]} :
			 (shift == 4'b1110)	? {in[13:0], in[n-1:14]} :
			 (shift == 4'b1111)	? {in[14:0], in[n-1:15]} :
			 in;

endmodule
