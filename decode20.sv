//decode19.sv - Displays the LEDs for tictactoe
// M.Faran Bhatti, Michael Smithman 2022-4-10

module decode20 (input logic [3:0] num,
                input logic clk, reset_n,
					 input logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
                output logic [19:0] tttleds //leds from GPIO 1
                );
					 
	logic [19:0] temp;
	
	always_comb
	unique case(num)
		1 : begin
            if (pos1 == 2'b01)
            temp = 20'b00000_00000_00000_00001; //Pin GPIO1
            else if (pos1 == 2'b10)
            temp = 20'b00000_00001_00000_00000; //Pin GPIO11
            else
            //leave as is
            temp = 0;
            end
		2 : begin
            if (pos2 == 2'b01)
            temp = 20'b00000_00000_00000_00010; //Pin GPIO2
            else if (pos2 == 2'b10)
            temp = 20'b00000_00010_00000_00000; //Pin GPIO12
            else
            //leave as is
            temp = 0;
            end
		3 : begin
            if (pos3 == 2'b01)
            temp = 20'b00000_00000_00000_00100; //Pin GPIO3
            else if (pos3 == 2'b10)
            temp = 20'b00000_00100_00000_00000; //Pin GPIO13
            else
            //leave as is
            temp = 0;
            end
		4 : begin
            if (pos4 == 2'b01) 
            temp = 20'b00000_00000_00000_01000; //Pin GPIO4
            else if (pos4 == 2'b10)
            temp = 20'b00000_01000_00000_00000; //Pin GPIO14
            else
            //leave as is
            temp = 0;
            end
		5 : begin
            if (pos5 == 2'b01)
            temp = 20'b00000_00000_00000_10000; //Pin GPIO5
            else if (pos5 == 2'b10)
            temp = 20'b00000_10000_00000_00000; //Pin GPIO15
            else
            //leave as is
            temp = 0;
            end
		6 : begin
            if (pos6 == 2'b01)
            temp = 20'b00000_00000_00001_00000; //Pin GPIO6
            else if (pos6 == 2'b10)
            temp = 20'b00001_00000_00000_00000; //Pin GPIO16
            else
            //leave as is
            temp = 0;
            end
		7 : begin
            if (pos7 == 2'b01)
            temp = 20'b00000_00000_00010_00000; //Pin GPIO7
            else if (pos7 == 2'b10)
            temp = 20'b00010_00000_00000_00000; //Pin GPIO17
            else
            //leave as is
            temp = 0;
            end
		8 : begin
            if (pos8 == 2'b01)
            temp = 20'b00000_00000_00100_00000; //Pin GPIO8
            else if (pos8 == 2'b10)
            temp = 20'b00100_00000_00000_00000; //Pin GPIO18
            else
            //leave as is
            temp = 0;
            end
		9 : begin
            if (pos9 == 2'b01)
            temp = 20'b00000_00000_01000_00000; //Pin GPIO9
            else if (pos9 == 2'b10)
            temp = 20'b01000_00000_00000_00000; //Pin GPIO19
            else
            //leave as is
            temp = 0;
            end
				default: temp = 20'b00000_00000_00000_00000;

	endcase
	
	always_ff@(posedge clk, negedge reset_n) begin
		if(~reset_n)
			tttleds <= 0;
		else
			tttleds <= (temp | tttleds);
	end
	
endmodule
