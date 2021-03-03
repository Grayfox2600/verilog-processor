module testbench_decoder();
reg [2:0] in;
wire [7:0] out;

initial 
begin
$display($time, " Test my decoder");
end

initial
begin
$monitor($time, " in=%b, out=%b", in, out);
end

initial
begin
in=3'b000;
#100;
in=3'b001; 
#100;
in=3'b010;
#100;
in=3'b011;
#100;
in=3'b100;
#100;
in=3'b101;
#100;
in=3'b110;
#100
in=3'b111;
end

decoder unit(in, out);
endmodule
