module register_access(reg_en, ALU_result, q0, q1, q2, q3, q4, q5, q6, q7);
input [7:0] reg_en;
input [15:0] ALU_result;
output [15:0] q0, q1, q2, q3, q4, q5, q6, q7;
reg [15:0] mem[7:0];

initial begin
$readmemb("registers.dat", mem);
end

assign q0 = mem[3'b000];
assign q1 = mem[3'b001];
assign q2 = mem[3'b010];
assign q3 = mem[3'b011];
assign q4 = mem[3'b100];
assign q5 = mem[3'b101];
assign q6 = mem[3'b110];
assign q7 = mem[3'b111];

always @(reg_en or ALU_result) begin
case(reg_en)
8'b00000001: mem[3'b000] = ALU_result;
8'b00000010: mem[3'b001] = ALU_result;
8'b00000100: mem[3'b010] = ALU_result;
8'b00001000: mem[3'b011] = ALU_result;
8'b00010000: mem[3'b100] = ALU_result;
8'b00100000: mem[3'b101] = ALU_result;
8'b01000000: mem[3'b110] = ALU_result;
8'b10000000: mem[3'b111] = ALU_result;
endcase
$writememb("registers.dat", mem);
end

endmodule
