module testbench_register_access();
reg [7:0] reg_en;
reg [15:0] ALU_result;
wire [15:0] q0, q1, q2, q3, q4, q5, q6, q7;

initial 
begin
$display($time, " Test my register accessor");
end

initial
begin
$monitor($time, " reg_en=%b, ALU_result=%b", reg_en, ALU_result);
end

initial
begin
#100;
reg_en=8'b00000001;
ALU_result=16'b0000000000000011;
$display($time, " q0=%b", q0);
#100;
reg_en=8'b00000010;
ALU_result=16'b0000000000001100;
$display($time, " q1=%b", q1);
#100;
reg_en=8'b00000100;
ALU_result=16'b0000000000110000;
$display($time, " q2=%b", q2);
#100;
reg_en=8'b00001000;
ALU_result=16'b0000000011000000;
$display($time, " q3=%b", q3);
#100;
reg_en=8'b00010000;
ALU_result=16'b0000001100000000;
$display($time, " q4=%b", q4);
#100;
reg_en=8'b00100000;
ALU_result=16'b0000110000000000;
$display($time, " q5=%b", q5);
#100;
reg_en=8'b01000000;
ALU_result=16'b0011000000000000;
$display($time, " q6=%b", q6);
#100;
reg_en=8'b10000000;
ALU_result=16'b1100000000000000;
$display($time, " q7=%b", q7);
end

register_access unit(reg_en, ALU_result, q0, q1, q2, q3, q4, q5, q6, q7);
endmodule
