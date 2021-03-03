module rshift_reg(in, shift, out);
parameter n=16;
input [n-1:0] in;
input [3:0] shift;
output [n-1:0] out;

assign out = in >> shift;

endmodule
