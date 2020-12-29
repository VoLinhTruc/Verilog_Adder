// module CLA4_Ling(
//     input  [3:0] G_in,
//     input  [3:0] P_in,
//     input  C_in,
//     output G_out,
//     output P_out,
//     output [4:0] C_out
// );

//     wire testG;
//     wire testP;
//     wire testGP;
    
//     wire testC0_1;
//     wire testC0_2;

//     assign testG = G_in[0];
//     assign testP = P_in[0];
//     assign testGP = P_in[0] & G_in[0];

//     assign testC0_1 = G_in[0] | (P_in[0] & C_out[0]);
//     assign testC0_2 = P_in[0] | (P_in[0] & C_out[0]);

//     // assign C_out[0] = C_in;
//     // assign C_out[1] = G_in[0] | (P_in[0] & C_out[0]);
//     // assign C_out[2] = G_in[1] | (P_in[1] & G_in[0]) | (P_in[1] & P_in[0] & C_out[0]);
//     // assign C_out[3] = G_in[2] | (P_in[2] & G_in[1]) | (P_in[2] & P_in[1] & G_in[0]) | (P_in[2] & P_in[1] & P_in[0] & C_out[0]);

//     // assign G_out = G_in[3] | (P_in[3] & G_in[2]) | (P_in[3] & P_in[2] & G_in[1]) | (P_in[3] & P_in[2] & P_in[1] & G_in[0]);
//     // assign P_out = P_in[3] & P_in[2] & P_in[1] & P_in[0];

//     // assign C_out[4] = G_out | (P_out & C_out[0]);
    
// //     input  [3:0] G_in,
// //     input  [3:0] P_in,
// //     input  C_in,
// //     output G_out,
// //     output P_out,
// //     output [4:0] C_out
// // );

//     assign C_out[0] = C_in;
//     assign C_out[1] = P_in[0] & (G_in[0] | C_out[0]);
//     assign C_out[2] = P_in[1] & (G_in[1] | G_in[0] | (P_in[0] & C_out[0]));
//     assign C_out[3] = P_in[2] & (G_in[2] | G_in[1] | (P_in[1] & G_in[0]) | (P_in[1] & P_in[0] & C_out[0]));

//     assign G_out = P_in[3] & (G_in[3] | G_in[2] | (P_in[2] & G_in[1]) | (P_in[2] & P_in[1] & G_in[0]));
//     assign P_out = P_in[3] & P_in[2] & P_in[1] & P_in[0];

//     assign C_out[4] = G_out | (P_out & C_out[0]);

// endmodule


// module Adder4_Ling(
//     input  [3:0] A_in,
//     input  [3:0] B_in,
//     input  C_in,
//     output [3:0] S_out,
//     output G_out,
//     output P_out,
//     output C_out
// );
//     wire [3:0] G = A_in & B_in;
//     wire [3:0] P = A_in | B_in;
//     wire [3:0] C;

//     CLA4_Ling cla(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));

//     assign S_out = A_in ^ B_in ^ C;

// endmodule


// module Adder16_CLALing(
//     input  [15:0] A_in,
//     input  [15:0] B_in,
//     input  C_in,
//     output [15:0] S_out,
//     output G_out,
//     output P_out,
//     output C_out
// );

//     wire [3:0] G;
//     wire [3:0] P;
//     wire [3:0] C;

//     Adder4_Ling adder0(.A_in(A_in[ 3: 0]), .B_in(B_in[ 3: 0]), .C_in(C[0]), .S_out(S_out[ 3: 0]), .G_out(G[0]), .P_out(P[0]));
//     Adder4_Ling adder1(.A_in(A_in[ 7: 4]), .B_in(B_in[ 7: 4]), .C_in(C[1]), .S_out(S_out[ 7: 4]), .G_out(G[1]), .P_out(P[1]));
//     Adder4_Ling adder2(.A_in(A_in[11: 8]), .B_in(B_in[11: 8]), .C_in(C[2]), .S_out(S_out[11: 8]), .G_out(G[2]), .P_out(P[2]));
//     Adder4_Ling adder3(.A_in(A_in[15:12]), .B_in(B_in[15:12]), .C_in(C[3]), .S_out(S_out[15:12]), .G_out(G[3]), .P_out(P[3]));

//     CLA4_Ling cla(.G_in(G), .P_in(P), .C_in(C_in), .G_out(G_out), .P_out(P_out), .C_out({C_out, C}));

// endmodule