module testbench_lsr();
reg [3:0] in;
wire [3:0] lsr_out;

initial 
begin
$display($time, " Test my lshift_reg");
end

initial
begin
$monitor($time, " in=%b, lsr_out=%b", in, lsr_out);
end

initial
begin
in=4'b0100;
#100;
in=4'b0101; 
#100;
in=4'b1111;
#100;
in=4'b0001;
#100;
end

lshift_reg #(4,2) unit(in, lsr_out);
endmodule
