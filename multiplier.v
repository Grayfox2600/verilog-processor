module multiplier(in1, in2, prod);
parameter size = 4;
input [size-1:0] in1, in2;
output [size-1:0] prod;

assign prod = in1 * in2;

endmodule
