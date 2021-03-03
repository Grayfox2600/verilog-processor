module testbench_ROM();

reg enr;
reg [2:0] pc;
wire [15:0] data;

initial
begin
enr = 1;
pc = 3'b000;
$display("enable = %b", enr);
end

always @* begin
#10
$display($time, " instruction=%b", data);
pc = pc + 1'b1;
#10;
$display($time, " instruction=%b", data);
pc = pc + 1'b1;
#10;
$display($time, " instruction=%b", data);
pc = pc + 1'b1;
#10;
$display($time, " instruction=%b", data);
#10;
end

ROM test(enr, pc, data);
endmodule


