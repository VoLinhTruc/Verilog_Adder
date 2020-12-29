// ------------------------------------------
// Ling Carry Lookahead Adder
// ------------------------------------------

module LCLA_4
(
    input  [3:0] A_in,
    input  [3:0] B_in,
    input  C_in,
    output [3:0] S_out,
    output G_out,
    output P_out,
    output C_out
);
    // wire [3:0] G = A_in & B_in;
    // wire [3:0] P = A_in | B_in;
    // wire [3:0] C;

    // LG_4 clg_4(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));

    // assign S_out = A_in ^ B_in ^ C;

    wire [3:0] G;
    wire [3:0] P;
    wire [3:0] C;

    My_And_2 and2_1(A_in[0], B_in[0], G[0]);
    My_And_2 and2_2(A_in[1], B_in[1], G[1]);
    My_And_2 and2_3(A_in[2], B_in[2], G[2]);
    My_And_2 and2_4(A_in[3], B_in[3], G[3]);

    My_Or_2 or2_1(A_in[0], B_in[0], P[0]);
    My_Or_2 or2_2(A_in[1], B_in[1], P[1]);
    My_Or_2 or2_3(A_in[2], B_in[2], P[2]);
    My_Or_2 or2_4(A_in[3], B_in[3], P[3]);


    LG_4 clg_4(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));


    wire [3:0] w;

    My_Xor_2 xor2_1(B_in[0], C[0], w[0]);
    My_Xor_2 xor2_2(B_in[1], C[1], w[1]);
    My_Xor_2 xor2_3(B_in[2], C[2], w[2]);
    My_Xor_2 xor2_4(B_in[3], C[3], w[3]);
    
    My_Xor_2 xor2_5(A_in[0], w[0], S_out[0]);
    My_Xor_2 xor2_6(A_in[1], w[1], S_out[1]);
    My_Xor_2 xor2_7(A_in[2], w[2], S_out[2]);
    My_Xor_2 xor2_8(A_in[3], w[3], S_out[3]);
endmodule


module LCLA_8
(
    input  [7:0] A_in,
    input  [7:0] B_in,
    input  C_in,
    output [7:0] S_out,
    output G_out,
    output P_out,
    output C_out
);

    wire [1:0] G;
    wire [1:0] P;
    wire [1:0] C;

    LCLA_4 cla_4_1(.A_in(A_in[3:0]), .B_in(B_in[3:0]), .C_in(C[0]), .S_out(S_out[3:0]), .G_out(G[0]), .P_out(P[0]));
    LCLA_4 cla_4_2(.A_in(A_in[7:4]), .B_in(B_in[7:4]), .C_in(C[1]), .S_out(S_out[7:4]), .G_out(G[1]), .P_out(P[1]));

    LCLG_2 clg_2(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));
endmodule


module LCLA_16
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

    LCLA_4 cla_4_1(.A_in(A_in[ 3: 0]), .B_in(B_in[ 3: 0]), .C_in(C[0]), .S_out(S_out[ 3: 0]), .G_out(G[0]), .P_out(P[0]));
    LCLA_4 cla_4_2(.A_in(A_in[ 7: 4]), .B_in(B_in[ 7: 4]), .C_in(C[1]), .S_out(S_out[ 7: 4]), .G_out(G[1]), .P_out(P[1]));
    LCLA_4 cla_4_3(.A_in(A_in[11: 8]), .B_in(B_in[11: 8]), .C_in(C[2]), .S_out(S_out[11: 8]), .G_out(G[2]), .P_out(P[2]));
    LCLA_4 cla_4_4(.A_in(A_in[15:12]), .B_in(B_in[15:12]), .C_in(C[3]), .S_out(S_out[15:12]), .G_out(G[3]), .P_out(P[3]));

    LG_4 clg_4(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));
endmodule


module LCLA_32
(
    input  [31:0] A_in,
    input  [31:0] B_in,
    input  C_in,
    output [31:0] S_out,
    output G_out,
    output P_out,
    output C_out
);

    wire [1:0] G;
    wire [1:0] P;
    wire [1:0] C;

    LCLA_16 cla_16_1(.A_in(A_in[15: 0]), .B_in(B_in[15: 0]), .C_in(C[0]), .S_out(S_out[15: 0]), .G_out(G[0]), .P_out(P[0]));
    LCLA_16 cla_16_2(.A_in(A_in[31:16]), .B_in(B_in[31:16]), .C_in(C[1]), .S_out(S_out[31:16]), .G_out(G[1]), .P_out(P[1]));

    LCLG_2 clg_2(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));
endmodule


module LCLA_64
(
    input  [63:0] A_in,
    input  [63:0] B_in,
    input  C_in,
    output [63:0] S_out,
    output G_out,
    output P_out,
    output C_out
);

    wire [3:0] G;
    wire [3:0] P;
    wire [3:0] C;

    LCLA_16 cla_16_1(.A_in(A_in[15: 0]), .B_in(B_in[15: 0]), .C_in(C[0]), .S_out(S_out[15: 0]), .G_out(G[0]), .P_out(P[0]));
    LCLA_16 cla_16_2(.A_in(A_in[31:16]), .B_in(B_in[31:16]), .C_in(C[1]), .S_out(S_out[31:16]), .G_out(G[1]), .P_out(P[1]));
    LCLA_16 cla_16_3(.A_in(A_in[47:32]), .B_in(B_in[47:32]), .C_in(C[2]), .S_out(S_out[47:32]), .G_out(G[2]), .P_out(P[2]));
    LCLA_16 cla_16_4(.A_in(A_in[63:48]), .B_in(B_in[63:48]), .C_in(C[3]), .S_out(S_out[63:48]), .G_out(G[3]), .P_out(P[3]));

    LG_4 clg_4(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));
endmodule