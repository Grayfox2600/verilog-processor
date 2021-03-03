module testbench_subtractor();
reg [3:0] in1, in2;
wire [3:0] diff;

initial 
begin
$display($time, " Test my subtractor");
end

initial
begin
$monitor($time, " in1=%d, in2=%d, diff=%b, diff=%d, n_flag=%b", in1, in2, diff, diff, (in2 > in1));
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

subtractor unit(in1, in2, diff);
endmodule
