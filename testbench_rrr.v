module testbench_rrr();
reg [3:0] in;
wire [3:0] rrr_out;

initial 
begin
$display($time, " Test my rrot_reg");
end

initial
begin
$monitor($time, " in=%b, rrr_out=%b", in, rrr_out);
end

initial
begin
in=4'b0100;
#100;
in=4'b0101; 
#100;
in=4'b0110;
#100;
in=4'b1001;
#100;
end

rrot_reg #(4,2) unit(in, rrr_out);
endmodule
