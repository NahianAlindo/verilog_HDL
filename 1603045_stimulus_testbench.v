`timescale 1ns / 1ps
module stimulus;

//inputs
reg A, B, C, D, E, F;

//outputs
wire A_, B_, C_, A_B_, A_B_C_, A_B_C_D, A_B_C_DE, A_B_C_DEF, A_B, out;

assignment uut
(
    .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .out(out)
);

initial 
begin
    $dumpfile("test.vcd");
    $dumpvars(0, stimulus);
    A = 0; B = 0; C = 0; D = 0; E = 0; F = 0;

    #5
    A = 0; B = 0; C = 0; D = 0; E = 0; F = 1;

    #5
    A = 0; B = 0; C = 0; D = 0; E = 1; F = 0;

    #5
    A = 0; B = 0; C = 0; D = 0; E = 1; F = 1;
    
    #5
    A = 0; B = 0; C = 0; D = 1; E = 0; F = 0;
    
    #5
    A = 0; B = 1; C = 0; D = 1; E = 0; F = 1;
    
    #5
    A = 1; B = 1; C = 0; D = 0; E = 1; F = 1;
    
    #5
    A = 0; B = 0; C = 1; D = 1; E = 0; F = 0;
    
    #5
    A = 1; B = 1; C = 1; D = 0; E = 0; F = 0;
    
    #5
    A = 1; B = 1; C = 1; D = 1; E = 1; F = 1;

end

initial 
begin
    $monitor("A=%d, B=%d, C=%d, D=%d, E=%d, F=%d, Ouput=%d \n", A, B, C, D, E, F, out);
end

endmodule