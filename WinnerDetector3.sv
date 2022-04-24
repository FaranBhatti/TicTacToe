//TicTacToe winner detector for the locations respectively - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022

module WinnerDetector3(input logic [1:0] pos0, pos1, pos2,
                       output logic [1:0] who,
                       output logic winner
                      );

logic [1:0] temp0, temp1, temp2;
logic temp3;

assign temp0[1] = !(pos0[1]^pos1[1]);
assign temp0[0] = !(pos0[0]^pos1[0]);
assign temp1[1] = !(pos2[1]^pos1[1]);
assign temp1[0] = !(pos2[0]^pos1[0]);
assign temp2[1] = temp0[1] & temp1[1];
assign temp2[0] = temp0[0] & temp1[0];
assign temp3 = pos0[1] | pos0[0];

//assigning winner if 3 positions are similar and the winner is either 10 or 01
assign winner = temp3 & temp2[1] & temp2[0];

//determining who is the winner
assign who[1] = winner & pos0[1];
assign who[0] = winner & pos0[0];

endmodule