//TicTacToe - No space detector - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022

module NoSpaceDetect(input logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
                     output logic no_space
                    );

//variables for detecting no more space                   
assign temp1 = pos1[1] | pos1[0];
assign temp2 = pos2[1] | pos2[0];
assign temp3 = pos3[1] | pos3[0];
assign temp4 = pos4[1] | pos4[0];
assign temp5 = pos5[1] | pos5[0];
assign temp6 = pos6[1] | pos6[0];
assign temp7 = pos7[1] | pos7[0];
assign temp8 = pos8[1] | pos8[0];
assign temp9 = pos9[1] | pos9[0];

assign no_space = ((((((((temp1 & temp2) & temp3) & temp4) & temp5) & temp6) & temp7) & temp8) & temp9);

endmodule