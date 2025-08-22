`timescale 1 ns/1 ns
`include "../full_adder.v"

module full_adder_tb;

reg A,B,C;
wire s,c;

full_adder uut(A,B,C,s,c);

initial begin
    
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);

    {A,B,C} = 3'b000;#20;
    {A,B,C} = 3'b100;#20;
    {A,B,C} = 3'b010;#20;
    {A,B,C} = 3'b001;#20;
    {A,B,C} = 3'b110;#20;
    {A,B,C} = 3'b101;#20;
    {A,B,C} = 3'b011;#20;
    {A,B,C} = 3'b111;#20;

    $display("Test Completed!");

end

endmodule