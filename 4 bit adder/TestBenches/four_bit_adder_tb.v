`timescale 1 ns/1 ns
`include "../four_bit_adder.v"

module four_bit_adder_tb;

reg [3:0]A;
reg [3:0]B;
wire [4:0]S;

four_bit_adder uut(A,B,S);

initial begin
    
    $dumpfile("four_bit_adder.vcd");
    $dumpvars(0, four_bit_adder_tb);

    A = 4'b0000; B = 4'b0000; #20;
    A = 4'b0001; B = 4'b0001; #20;
    A = 4'b0010; B = 4'b0011; #20;
    A = 4'b0100; B = 4'b0101; #20;
    A = 4'b0110; B = 4'b0111; #20;
    A = 4'b1000; B = 4'b1001; #20;
    A = 4'b1010; B = 4'b1011; #20;
    A = 4'b1100; B = 4'b1101; #20;
    A = 4'b1110; B = 4'b1111; #20;

    $display("Test Completed!");

end

endmodule