`include "Registrador.v"

module testbench ();

    reg Shift_in, CLK, Reset;
    wire shift_out;

    Registrador Reg (.Shift_in(Shift_in), .CLK(CLK), .Reset(Reset), .shift_out(shift_out));


    initial begin

        $dumpfile("testbench.vcd");
        $dumpvars;  
        $monitor("Shift_in %b Clock %b Shift_out %b", Shift_in, CLK, shift_out  );

        CLK = 1'b1;

             Shift_in = 1'b1;
        #10; Shift_in = 1'b0;
        #10; Shift_in = 1'b1;
        #10; Shift_in = 1'b0;
        #10; Shift_in = 1'b1;
        #10; Shift_in = 1'b0;
        #10;

        $finish;
    
    end

    always #10 CLK = ~CLK;

endmodule