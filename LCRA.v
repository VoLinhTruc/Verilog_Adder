// ------------------------------------------
// Ling Ripple Adder
// ------------------------------------------

module LCRA_16
(
    input  [15:0] A_in,
    input  [15:0] B_in,
    input  C_in,
    output [15:0] S_out,
    output G_out,
    output P_out,
    output C_out
);

    wire [3:0] G;
    wire [3:0] P;
    wire [3:0] C;

    wire w1, w2, w3;

    LCLA_4 cla_4_1(.A_in(A_in[ 3: 0]), .B_in(B_in[ 3: 0]), .C_in(C_in), .S_out(S_out[ 3: 0]), .G_out(G[0]), .P_out(P[0]), .C_out(w1));
    LCLA_4 cla_4_2(.A_in(A_in[ 7: 4]), .B_in(B_in[ 7: 4]), .C_in(w1), .S_out(S_out[ 7: 4]), .G_out(G[1]), .P_out(P[1]), .C_out(w2));
    LCLA_4 cla_4_3(.A_in(A_in[11: 8]), .B_in(B_in[11: 8]), .C_in(w2), .S_out(S_out[11: 8]), .G_out(G[2]), .P_out(P[2]), .C_out(w3));
    LCLA_4 cla_4_4(.A_in(A_in[15:12]), .B_in(B_in[15:12]), .C_in(w3), .S_out(S_out[15:12]), .G_out(G[3]), .P_out(P[3]), .C_out(C_out));

    // assign C_out = cla_4_4.C_out;

    // CLG_4 clg_4(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));
endmodule