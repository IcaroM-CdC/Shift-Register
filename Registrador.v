module Registrador(Shift_in, CLK, shift_out, Bit_0, Bit_1, Bit_2, Bit_3, Reset);

    input wire Shift_in, CLK, Reset;
    reg Bit_0, Bit_1, Bit_2, Bit_3;
    output wire shift_out;


    always @(posedge CLK) begin
        
        if (Reset == 1'b1) begin
            
            Bit_3 <= 1'b0;
            Bit_2 <= 1'b0;
            Bit_1 <= 1'b0;
            Bit_0 <= 1'b0; 

        else 

            Bit_3 = Shift_in;
            Bit_2 = Bit_3;
            Bit_1 = Bit_2;
            Bit_0 = Bit_1;

        end

    end

    assign shift_out = Bit_0;

endmodule 