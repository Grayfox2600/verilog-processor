module testbench_processor();
reg clk, rst, run;
reg [2:0] pc;
wire [15:0] ALU_result;
wire [3:0] state;
wire [2:0] flags;
integer i; 

initial begin
i = 0;
pc = 0;
clk = 0;
rst = 1;
run = 1;
#1;
rst = 0;
#1;
rst = 1;
end

initial begin 
$monitor($time, " clk=%b, rst=%b, run=%b, state=%b, i=%d, pc=%b, ALU_result=%b, flags=%b", clk, rst, run, state, i, pc, ALU_result, flags);
end

always @* begin
while (i < 50) begin  //Change i here to adjust the number of instruction cycles
#2 clk = ~clk;
if (i!=0 && i%6==0) pc = pc + 1;
i = i + 1;
end
end

processor test(clk, rst, run, state, pc, ALU_result, flags);

endmodule
