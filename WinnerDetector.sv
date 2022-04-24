//TicTacToe winner detector - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022

module WinnerDetector(input logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
                      output logic win,
                      output logic [1:0] who
                     );

logic win1, win2, win3, win4, win5, win6, win7, win8;
logic [1:0] who1, who2, who3, who4, who5, who6, who7, who8;

WinnerDetector3 u1 (pos1, pos2, pos3, who1, win1); //win in 1,2,3
WinnerDetector3 u2 (pos4, pos5, pos6, who2, win2); //win in 4,5,6
WinnerDetector3 u3 (pos7, pos8, pos9, who3, win3); //win in 7,8,9
WinnerDetector3 u4 (pos1, pos4, pos7, who4, win4); //win in 1,4,7
WinnerDetector3 u5 (pos2, pos5, pos8, who5, win5); //win in 2,5,8
WinnerDetector3 u6 (pos3, pos6, pos9, who6, win6); //win in 3,6,9
WinnerDetector3 u7 (pos1, pos5, pos9, who7, win7); //win in 1,5,9
WinnerDetector3 u8 (pos3, pos5, pos6, who8, win8); //win in 3,5,7

assign win = (((((((win1 | win2) | win3) | win4) | win5) | win6) | win7) | win8);
assign who = (((((((who1 | who2) | who3) | who4) | who5) | who6) | who7) | who8);

endmodule