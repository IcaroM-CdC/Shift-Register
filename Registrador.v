module Registrador(Shift_in, CLK, shift_out, Bit_0, Bit_1, Bit_2, Bit_3, Reset);

    input wire Shift_in, CLK, Reset;
    
    reg Bit_0, Bit_1, Bit_2, Bit_3;
    
    output wire shift_out;

    assign shift_out = Bit_3;

    
    always @(posedge CLK) begin
        
        if(Reset == 1'b1)

            Bit_3 <= 1'b0;
            Bit_2 <= 1'B0;
            Bit_1 <= 1'B0;
            Bit_0 <= 1'B0;  

        else

            Bit_3 <= Bit_2;
            Bit_2 <= Bit_1;
            Bit_1 <= Bit_0;
            Bit_0 <= Shift_in;

    end

endmodule 