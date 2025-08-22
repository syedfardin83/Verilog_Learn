`include "full_adder.v"

module four_bit_adder(input [3:0]A,input [3:0]B,output [4:0]S);

wire [2:0]C;

full_adder F1(A[0],B[0],1'b0,S[0],C[0]);
full_adder F2(A[1],B[1],C[0],S[1],C[1]);
full_adder F3(A[2],B[2],C[1],S[2],C[2]);
full_adder F4(A[3],B[3],C[2],S[3],S[4]);

endmodule