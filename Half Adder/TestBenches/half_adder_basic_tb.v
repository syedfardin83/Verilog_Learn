`timescale 1 ns/ 1 ns
`include "../half_adder_basic.v"

module half_adder_basic_tb;

reg A, B;
wire s,c;

half_adder_basic uut(A,B,s,c);

initial begin
    
    $dumpfile("half_adder_basic.vcd");
    $dumpvars(0, half_adder_basic_tb);

    {A, B} = 2'b00; #20;
    {A, B} = 2'b01; #20;
    {A, B} = 2'b10; #20;
    {A, B} = 2'b11; #20;

    $display("Test Completed!");


end

endmodule