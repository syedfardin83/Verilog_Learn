module sr_latch(input S, input R, output Q, output Qn);

nor n1(Q, R, Qn);
nor n2(Qn, S, Q);


endmodule