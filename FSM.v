module FSM(clk, rst, run, state);
input clk, rst, run;
output [3:0] state;
reg [2:0] current, next, return;
parameter fetch = 2'b00, decode = 2'b01, execute = 2'b10, sleep = 2'b11;

always @(posedge clk, negedge rst) begin
	if (!rst) begin
		current <= fetch;
	end else begin
		current <= next;
	end
end

always @(run, current) begin
	case(current)
		fetch:
		if(!run) begin 
			next = sleep;
			return = decode;
		end
		else next = decode;
		decode:
		if(!run) begin
			next = sleep;
			return = execute;
		end
		else next = execute;
		execute:
		if(!run) begin
			next = sleep;
			return = fetch;
		end
		else next = fetch;
		sleep:
		if(!run) next = sleep;
		else next = return;
		default:
		next = 2'bzz;
	endcase
end

assign state[0] = (current == fetch);
assign state[1] = (current == decode);
assign state[2] = (current == execute);
assign state[3] = (current == sleep);

endmodule

