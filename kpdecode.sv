//TicTacToe - kpdecode - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022
module kpdecode (output logic [3:0] num,
		output logic kphit,
		input logic [3:0] kpc,
		input logic [3:0] kpr);

	always_comb begin
		num = 'h0;
		if (kpc != 4'b1111) begin
			if (kpr != 4'b1111) begin
				kphit <= 1;
				case(kpc)
					4'b0111 : 
						case(kpr)
							4'b0111 : num = 1;
							4'b1011 : num = 4;
							4'b1101 : num = 7;
							4'b1110 : num = 4'hE;
							default : num = num;
						endcase
					4'b1011 : 
						case(kpr)
							4'b0111 : num = 2;
							4'b1011 : num = 5;
							4'b1101 : num = 8;
							4'b1110 : num = 0;
							default : num = num;
						endcase
					4'b1101 : 
						case(kpr)
							4'b0111 : num = 3;
							4'b1011 : num = 6;
							4'b1101 : num = 9;
							4'b1110 : num = 4'hF;
							default : num = num;
						endcase
					4'b1110 : 
						case(kpr)
							4'b0111 : num = 4'hA;
							4'b1011 : num = 4'HB;
							4'b1101 : num = 4'hC;
							4'b1110 : num = 4'hD;
							default : num = num;
						endcase
				default : num = num;
				endcase
			end
			else
				kphit <= 0;
		end
		else
			kphit <= 0;
	end

endmodule