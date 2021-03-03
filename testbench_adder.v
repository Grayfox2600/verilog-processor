module testbench_adder();
reg [3:0] in1, in2;
wire [3:0] sum;
wire cout;

initial 
begin
$display($time, " Test my adder");
end

initial
begin
$monitor($time, " in1=%d, in2=%d, cout=%b, sum=%b, sum=%d", in1, in2, cout, sum, {cout, sum});
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

adder unit(in1, in2, cout, sum);
endmodule
