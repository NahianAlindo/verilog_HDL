module assignment
(
    input A, B, C, D, E, F,
    output out
);

wire A_, B_, C_, A_B_, A_B_C_, A_B_C_D, A_B_C_DE, A_B_C_DEF, A_B;

not(A_, A);
not(B_, B);
not(C_, C);

and(A_B_, A_, B_);
and(A_B_C_, A_B_, C_);
and(A_B_C_D, A_B_C_, D);
and(A_B_C_DE, A_B_C_D, E);
and(A_B_C_DEF, A_B_C_DE, F);

and(A_B, A_, B);

or(out, A_B_C_DEF, A_B);

endmodule