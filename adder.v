module adder(in1, in2, cout, sum);
parameter n = 4;
input [n-1:0] in1, in2;
output [n-1:0] sum;
output cout;

assign {cout, sum} = in1 + in2;

endmodule
