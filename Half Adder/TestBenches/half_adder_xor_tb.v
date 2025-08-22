`timescale 1 ns/ 1ns
`include "../half_adder_xor.v"

module half_adder_xor_tb;

reg A,B;
wire C,S;

half_adder_xor uut(A,B,S,C);

initial begin
    
    $dumpfile("half_adder_xor_tb.vcd");
    $dumpvars(0,half_adder_xor_tb);

    {A,B} = 2'b00; #20;
    {A,B} = 2'b01; #20;
    {A,B} = 2'b10; #20;
    {A,B} = 2'b11; #20;
    $display("Test is complete!");

end

endmodule