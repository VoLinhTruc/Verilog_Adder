// ------------------------------------------
// Ling Carry Lookahead Generator
// ------------------------------------------

module LCLG_4
(
    input  [3:0] G_in,
    input  [3:0] P_in,
    input  C_in,
    output G_out,
    output P_out,
    output [4:0] C_out
);

    assign C_out[0] = C_in;
    assign C_out[1] = P_in[0] & (G_in[0] | C_out[0]);
    assign C_out[2] = P_in[1] & (G_in[1] | G_in[0] | (P_in[0] & C_out[0]));
    assign C_out[3] = P_in[2] & (G_in[2] | G_in[1] | (P_in[1] & G_in[0]) | (P_in[1] & P_in[0] & C_out[0]));

    assign G_out = P_in[3] & (G_in[3] | G_in[2] | (P_in[2] & G_in[1]) | (P_in[2] & P_in[1] & G_in[0]));
    assign P_out = P_in[3] & P_in[2] & P_in[1] & P_in[0];

    assign C_out[4] = G_out | (P_out & C_out[0]);

endmodule