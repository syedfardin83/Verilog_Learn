`include "my_not.v"

module mod(input [3:0]A,input [3:0]B,output [4:0]S);

wire [2:0]C;

my_not F1(A[0],B[0],1'b0,S[0],C[0]);
my_not F2(A[1],B[1],C[0],S[1],C[1]);
my_not F3(A[2],B[2],C[1],S[2],C[2]);
my_not F4(A[3],B[3],C[2],S[3],S[4]);

endmodule