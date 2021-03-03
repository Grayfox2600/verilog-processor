module testbench_rsr();
reg [3:0] in;
wire [3:0] rsr_out;

initial 
begin
$display($time, " Test my rshift_reg");
end

initial
begin
$monitor($time, " in=%b, rsr_out=%b", in, rsr_out);
end

initial
begin
in=4'b0100;
#100;
in=4'b0101; 
#100;
in=4'b1111;
#100;
in=4'b1000;
#100;
end

rshift_reg #(4,2) unit(in, rsr_out);
endmodule
