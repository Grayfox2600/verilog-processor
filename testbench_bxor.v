module testbench_bxor();
reg [3:0] in1, in2;
wire [3:0] bxor_out;

initial 
begin
$display($time, " Test my bitwise_xor");
end

initial
begin
$monitor($time, " in1=%b, in2=%b, bxor_out=%b", in1, in2, bxor_out);
end

initial
begin
in1=4'b0100; 
in2=4'b0011;
#100;
in1=4'b0100;
in2=4'b0101;
#100;
in1=4'b0101; 
in2=4'b0101;
#100;
in1=4'b1111;
in2=4'b1000;
#100;
in1=4'b1000;
in2=4'b1111;
#100;
end

bitwise_xor unit(in1, in2, bxor_out);
endmodule
