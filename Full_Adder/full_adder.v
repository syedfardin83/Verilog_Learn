module full_adder(A,B,C,s,c);

input A,B,C;
output s,c;

assign s = A ^ B ^ C;
assign c = (A&B) | (B&C) | (C&A);

endmodule