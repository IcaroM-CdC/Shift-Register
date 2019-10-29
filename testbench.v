`include "Registrador.v"

module testbench ();

    reg Shift_in, CLK, Reset;
    wire shift_out;

    Registrador Reg (.Shift_in(Shift_in), .CLK(CLK), .Reset(Reset), .shift_out(shift_out));


    initial begin
          
        $dumpfile("testbench.vcd");
        $monitor("Shift_in %b Clock %b Bit_0 %b Bit_1 %b Bit_2 %b Bit_3 Shift_out %b");

    end

    initial begin

             Shift_in = 1'b1;
        #20; Shift_in = 1'b0;
        #20; Shift_in = 1'b1;
        #20; Shift_in = 1'b1;
        #20;

        CLK = 1'b0;

        $finish;
    
    end

    always #20 CLK = ~CLK;

endmodule