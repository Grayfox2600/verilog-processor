module testbench_bor();
reg [3:0] in1, in2;
wire [3:0] bor_out;

initial 
begin
$display($time, " Test my bitwise_or");
end

initial
begin
$monitor($time, " in1=%b, in2=%b, bor_out=%b", in1, in2, bor_out);
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

bitwise_or unit(in1, in2, bor_out);
endmodule
