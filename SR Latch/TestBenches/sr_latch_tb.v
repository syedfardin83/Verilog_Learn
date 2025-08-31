`timescale 1 ns/1 ns
`include "../sr_latch.v"

module sr_latch_tb;

reg S, R;
wire Q, Qn;

sr_latch uut(S, R, Q, Qn);

initial begin

    $dumpfile("sr_latch_tb.vcd");
    $dumpvars(0, sr_latch_tb);

    {S, R} = 2'b00; #20;
    {S, R} = 2'b01; #20;
    {S, R} = 2'b00; #20;
    {S, R} = 2'b10; #20;
    {S, R} = 2'b00; #20;
    {S, R} = 2'b11; #20;

end

endmodule