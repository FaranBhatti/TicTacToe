//TicTacToe state machine - M. Faran Bhatti & Michael Smithman
//Apr.7th/2022

module StateMachine(input logic clk, reset_n, illegal_move, no_space, win,
                    output logic computer_play, player_play,
						  input logic kphit
                   );

typedef enum {IDLE, PLAYER, COMPUTER, GAME_DONE} GameStates;
logic [1:0] current_state, next_state;
logic play, pc;

always_ff @(posedge clk, negedge reset_n) begin
    if(~reset_n)
    current_state <= IDLE;
    else
    current_state <= next_state;
end

always_ff @(posedge clk, negedge reset_n) begin
    unique case(current_state)
    IDLE: begin //IDLE STATE: Waiting for input...
        if(reset_n == 1 && play == 1)
        next_state <= PLAYER;
		  else if(reset_n == 1 && pc == 1)
        next_state <= COMPUTER;
        else
        next_state <= IDLE;
        player_play = 0;
        computer_play = 0;
    end
    PLAYER: begin //PLAYER STATE: Player can make a move
        player_play <= 1;
        computer_play <= 0;
		  play <= 1;
		  pc <= 0;
        if ((illegal_move == 0) && kphit)
        next_state <= COMPUTER;
        else if (win==0 && no_space == 0) begin //if no input, no win, and remaining spaces, wait for an input
        next_state <= IDLE;
        end 
        else if (no_space == 1 || win == 1) begin //if win or no more spaces, game is over
        next_state <= GAME_DONE;
		  player_play <= 0;
        end  
    end
    COMPUTER: begin //COMPUTER STATE: Computer (P2) can make a move
        player_play <= 0;
		  computer_play <= 1;
		  pc <= 1;
		  play <= 0;
        if ((illegal_move == 0) && kphit)
        next_state <= PLAYER;
		  else if (win==0 && no_space == 0) begin //if no input, no win, and remaining spaces, wait for an input
            next_state <= IDLE;
        end 
    else if (no_space == 1 || win == 1) begin //if win or no more spaces, game is over
        next_state <= GAME_DONE;
        computer_play <= 0;
        end  
    end
    GAME_DONE: begin //GAME_DONE STATE: Game is over due to no more spaces or a win
        player_play = 0;
        computer_play = 0;
        if (~reset_n)
        next_state = IDLE;
        else
        next_state = GAME_DONE;
    end
    endcase
end
endmodule