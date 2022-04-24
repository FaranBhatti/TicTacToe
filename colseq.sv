// colseq.sv - Simple State Machine. Inputs: kpr, clk, reset_n, Output : kpc
// output kpc drives each keypad column output low in succession
// M. Faran Bhatti 01/29/2022

module colseq (output logic [3:0] kpc,
			   input logic [3:0] kpr,
			   input logic reset_n, clk);
			   
logic [1:0] state, next_state; //Register to hold current state and next_state

always_ff @(posedge clk, negedge reset_n)
	if (~reset_n)
		state <= 0;
	else
		state <= next_state;

always_comb
	if (~kpr)
		next_state = state;
	else
		if (state == 3)
			next_state = 0;
		else
			next_state = state + 2'b01;
		
always_comb
	case(state)
	2'b00 : kpc = 4'b0111;
	2'b01 : kpc = 4'b1011;
	2'b10 : kpc = 4'b1101;
	2'b11 : kpc = 4'b1110;
	default : kpc = 4'b0111;
	endcase

endmodule