module half_adder_basic(A,B,S,C);

input A,B;
output S,C;

wire wn1, wn2, wa1, wa2;

//  The XOR gate (Finding the sum)
not n1(wn1,A);
and a1(wa1, wn1, B);

not n2(wn2,B);
and a2(wa2, A, wn2);

or o1(S, wa1, wa2);

//  The and gate (Finding the carry)
and a3(C,A,B);

endmodule