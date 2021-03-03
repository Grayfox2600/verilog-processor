module testbench_FSM();
reg clk, rst, run;
wire [3:0] state;
integer i;

initial
begin
$monitor($time, " rst=%b, run=%b, state=%b", rst, run, state);
end

initial
begin
	i = 0;
	run = 1;
	clk = 0;
	rst = 1;
	#1;
	rst = 0;
	#1;
	rst = 1;
end

always @* begin
	while (i <= 50) begin
		#2 clk = ~clk;
		i = i + 1;
	end
end

FSM test(clk, rst, run, state);
endmodule

