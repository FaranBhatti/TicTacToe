//TicTacToe - Illegal move detect - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022

module IllegalMoveDetect(input logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
                         input logic player_play, computer_play,
                         input logic [3:0] num,
                         output logic illegal_move
                        );

//declaring variables for all of the illegal moves
logic ill1, ill2, ill3, ill4, ill5, ill6, ill7, ill8, ill9, ill11;
logic ill12, ill13, ill14, ill15, ill16, ill17, ill18, ill19, ill21, ill22;

// player's illegal moves   
assign ill1 = (pos1[1] | pos1[0]) & (player_play && (num == 1));
assign ill2 = (pos2[1] | pos2[0]) & (player_play && (num == 2));
assign ill3 = (pos3[1] | pos3[0]) & (player_play && (num == 3));
assign ill4 = (pos4[1] | pos4[0]) & (player_play && (num == 4));
assign ill5 = (pos5[1] | pos5[0]) & (player_play && (num == 5));
assign ill6 = (pos6[1] | pos6[0]) & (player_play && (num == 6));
assign ill7 = (pos7[1] | pos7[0]) & (player_play && (num == 7));
assign ill8 = (pos8[1] | pos8[0]) & (player_play && (num == 8));
assign ill9 = (pos9[1] | pos9[0]) & (player_play && (num == 9));

// computer's illegal moves
assign ill11 = (pos1[1] | pos1[0]) & (computer_play && (num == 1));
assign ill12 = (pos2[1] | pos2[0]) & (computer_play && (num == 2));
assign ill13 = (pos3[1] | pos3[0]) & (computer_play && (num == 3));
assign ill14 = (pos4[1] | pos4[0]) & (computer_play && (num == 4));
assign ill15 = (pos5[1] | pos5[0]) & (computer_play && (num == 5));
assign ill16 = (pos6[1] | pos6[0]) & (computer_play && (num == 6));
assign ill17 = (pos7[1] | pos7[0]) & (computer_play && (num == 7));
assign ill18 = (pos8[1] | pos8[0]) & (computer_play && (num == 8));
assign ill19 = (pos9[1] | pos9[0]) & (computer_play && (num == 9));

//intermediary signals in order to assist with troubleshooting
assign ill21 =((((((((ill1 | ill2) | ill3) | ill4) | ill5) | ill6) | ill7) | ill8) | ill9);
assign ill22 =((((((((ill11 | ill12) | ill13) | ill14) | ill15) | ill16) | ill17) | ill18) | ill19);

//assignment for the illegal_move if any of the illegal moves are true
assign illegal_move = ill21 | ill22;

endmodule