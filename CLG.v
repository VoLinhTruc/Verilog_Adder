// ------------------------------------------
// Carry Lookahead Generator
// ------------------------------------------

module CLG_2
(
    input  [1:0] G_in,
    input  [1:0] P_in,
    input  C_in,
    output G_out,
    output P_out,
    output [2:0] C_out
);

    assign C_out[0] = C_in;
    assign C_out[1] = G_in[0] | (P_in[0] & C_out[0]);

    assign G_out = G_in[1] | (P_in[1] & G_in[0]); 
    assign P_out = P_in[1] & P_in[0];

    assign C_out[2] = G_out | (P_out & C_out[0]);

endmodule


module CLG_4
(
    input  [3:0] G_in,
    input  [3:0] P_in,
    input  C_in,
    output G_out,
    output P_out,
    output [4:0] C_out
);
    // wire w1;

    // wire w2;
    // wire w3;

    // wire w4;
    // wire w5;
    // wire w6;

    // wire w7;
    // wire w8;
    // wire w9;

    // wire w10;


    // assign C_out[0] = C_in;

    // My_And_2 and2_1(P_in[0], C_out[0], w1);
    // My_Or_2 or2_1(G_in[0], w1, C_out[1]);

    // My_And_3 and3_1(P_in[1], P_in[0], C_out[0], w2);
    // My_And_2 and2_2(P_in[1], G_in[0], w3);
    // My_Or_3 or3_1(G_in[1], w3, w2, C_out[2]);

    // My_And_4 and4_1(P_in[2], P_in[1], P_in[0], C_out[0], w4);
    // My_And_3 and3_2(P_in[2], P_in[1], G_in[0], w5);
    // My_And_2 and2_3(P_in[2], G_in[1], w6);
    // My_Or_4 orr4_1(G_in[2], w4, w5, w6, C_out[3]);

    // My_And_4 and4_2(P_in[3], P_in[2], P_in[1], G_in[0], w7);
    // My_And_3 and3_3(P_in[3], P_in[2], G_in[1], w8);
    // My_And_2 and2_4(P_in[3], G_in[2], w9);
    // My_Or_4 orr4_2(G_in[3], w7, w8, w9, G_out);

    // My_And_4 and4_3(P_in[3], P_in[2], P_in[1], P_in[0], P_out);

    // My_And_2 and2_5(P_out, C_out[0], w10);
    // My_Or_2 or2_2(G_out, w10, C_out[4]);


    assign C_out[0] = C_in;

    wire w1;
    My_And_2 and2_1(P_in[0], C_out[0], w1);
    My_Or_2 or2_1(G_in[0], w1, C_out[1]);

    wire w2;
    My_And_2 and2_2(P_in[0], C_out[0], w2);
    wire w3;
    My_And_2 and2_3(P_in[1], w2, w3);
    wire w4;
    My_And_2 and2_4(P_in[1], G_in[0], w4);
    wire w5;
    My_Or_2 or2_2(w3, w4, w5);
    My_Or_2 or2_3(G_in[1], w5, C_out[2]);

    wire w6;
    My_And_2 and2_5(P_in[0], C_out[0], w6);
    wire w7;
    My_And_2 and2_6(P_in[1], w6, w7);
    wire w8;
    My_And_2 and2_7(P_in[2], w7, w8);
    wire w9;
    My_And_2 and2_8(P_in[1], G_in[0], w9);
    wire w10;
    My_And_2 and2_9(P_in[2], w9, w10);
    wire w11;
    My_And_2 and2_10(P_in[2], G_in[1], w11);
    wire w12;
    My_Or_2 or2_4(w8, w10, w12);
    wire w13;
    My_Or_2 or2_5(w11, w12, w13);
    My_Or_2 or2_6(G_in[2], w13, C_out[3]);

    wire w14;
    My_And_2 and2_11(P_in[1], G_in[0], w14);
    wire w15;
    My_And_2 and2_12(P_in[2], w14, w15);
    wire w16;
    My_And_2 and2_13(P_in[3], w5, w16);
    wire w17;
    My_And_2 and2_14(P_in[2], G_in[1], w17);
    wire w18;
    My_And_2 and2_15(P_in[3], w17, w18);
    wire w19;
    My_And_2 and2_16(P_in[3], G_in[2], w19);
    wire w20;
    My_Or_2 or2_7(w16, w18, w20);
    wire w21;
    My_Or_2 or2_8(w19, w20, w21);
    My_Or_2 or2_9(G_in[3], w21, G_out);
    
    wire w22;
    My_And_2 and2_17(P_in[1], P_in[0], w22);
    wire w23;
    My_And_2 and2_18(P_in[2], w22, w23);
    My_And_2 and2_19(P_in[3], w23, P_out);
    
    wire w24;
    My_And_2 and2_20(P_out, C_out[0], w24);
    My_Or_2 or2_10(G_out, w24, C_out[4]);


    // assign C_out[0] = C_in;
    // assign C_out[1] = G_in[0] | (P_in[0] & C_out[0]);
    // assign C_out[2] = G_in[1] | (P_in[1] & G_in[0]) | (P_in[1] & P_in[0] & C_out[0]);
    // assign C_out[3] = G_in[2] | (P_in[2] & G_in[1]) | (P_in[2] & P_in[1] & G_in[0]) | (P_in[2] & P_in[1] & P_in[0] & C_out[0]);

    // assign G_out = G_in[3] | (P_in[3] & G_in[2]) | (P_in[3] & P_in[2] & G_in[1]) | (P_in[3] & P_in[2] & P_in[1] & G_in[0]);
    // assign P_out = P_in[3] & P_in[2] & P_in[1] & P_in[0];

    // assign C_out[4] = G_out | (P_out & C_out[0]);

endmodule