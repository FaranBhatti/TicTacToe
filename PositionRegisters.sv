//TicTacToe position registers - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022

module PositionRegisters(input logic clk, reset_n, illegal_move,
                         input logic player_play, computer_play,
                         input logic [3:0] num,
                         output logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9
                        );

//location for position 1, assignments need to be done!
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos1 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos1 <= pos1; //maintain previous position if illegal move
            else if (computer_play && (num == 1))
            pos1 <= 2'b10; //store computer data
            else if (player_play && (num == 1))
            pos1 <= 2'b01; //store player data
            else
            pos1 <= pos1; //maintain previous position
            end
end

//location for position 2
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos2 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos2 <= pos2; //maintain previous position if illegal move
            else if (computer_play && (num == 2))
            pos2 <= 2'b10; //store computer data
            else if (player_play && (num == 2))
            pos2 <= 2'b01; //store player data
            else
            pos2 <= pos2; //maintain previous position
            end
end

//location for position 3
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos3 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos3 <= pos3; //maintain previous position if illegal move
            else if (computer_play && (num == 3))
            pos3 <= 2'b10; //store computer data
            else if (player_play && (num == 3))
            pos3 <= 2'b01; //store player data
            else
            pos3 <= pos3; //maintain previous position
            end
end

//location for position 4
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos4 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos4 <= pos4; //maintain previous position if illegal move
            else if (computer_play && (num == 4))
            pos4 <= 2'b10; //store computer data
            else if (player_play && (num == 4))
            pos4 <= 2'b01; //store player data
            else
            pos4 <= pos4; //maintain previous position
            end
end

//location for position 5
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos5 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos5 <= pos5; //maintain previous position if illegal move
            else if (computer_play && (num == 5))
            pos5 <= 2'b10; //store computer data
            else if (player_play && (num == 5))
            pos5 <= 2'b01; //store player data
            else
            pos5 <= pos5; //maintain previous position
            end
end

//location for position 6
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos6 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos6 <= pos6; //maintain previous position if illegal move
            else if (computer_play && (num == 6))
            pos6 <= 2'b10; //store computer data
            else if (player_play && (num == 6))
            pos6 <= 2'b01; //store player data
            else
            pos6 <= pos6; //maintain previous position
            end
end

//location for position 7
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos7 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos7 <= pos7; //maintain previous position if illegal move
            else if (computer_play && (num == 7))
            pos7 <= 2'b10; //store computer data
            else if (player_play && (num == 7))
            pos7 <= 2'b01; //store player data
            else
            pos7 <= pos7; //maintain previous position
            end
end

//location for position 8
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos8 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos8 <= pos8; //maintain previous position if illegal move
            else if (computer_play && (num == 8))
            pos8 <= 2'b10; //store computer data
            else if (player_play && (num == 8))
            pos8 <= 2'b01; //store player data
            else
            pos8 <= pos8; //maintain previous position
            end
end

//location for position 9
always_ff @(posedge clk, negedge reset_n) begin
        if(~reset_n)
        pos9 <= 2'b00;
        else begin
            if(illegal_move == 1)
            pos9 <= pos9; //maintain previous position if illegal move
            else if (computer_play && (num == 9))
            pos9 <= 2'b10; //store computer data
            else if (player_play && (num == 9))
            pos9 <= 2'b01; //store player data
            else
            pos9 <= pos9; //maintain previous position
            end
end

endmodule