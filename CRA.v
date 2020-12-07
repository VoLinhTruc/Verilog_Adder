// ------------------------------------------
// Carry Ripple Adder
// ------------------------------------------

module CRA_2
(
    input [1:0] A_in,
    input [1:0] B_in,
    input C_in,
    output [1:0] S_out,
    output C_out
);

    wire c_1;

    FA FA_1 (.A_in(A_in[0]), .B_in(B_in[0]), .C_in(C_in), .S_out(S_out[0]), .C_out(c_1));
    FA FA_2 (.A_in(A_in[1]), .B_in(B_in[1]), .C_in(c_1), .S_out(S_out[1]), .C_out(C_out));
endmodule


module CRA_4
(
    input [3:0] A_in,
    input [3:0] B_in,
    input C_in,
    output [3:0] S_out,
    output C_out
);

    wire c_2;

    CRA_2 CRA_2_1 (.A_in(A_in[1:0]), .B_in(B_in[1:0]), .C_in(C_in), .S_out(S_out[1:0]), .C_out(c_2));
    CRA_2 CRA_2_2 (.A_in(A_in[3:2]), .B_in(B_in[3:2]), .C_in(c_2), .S_out(S_out[3:2]), .C_out(C_out));
endmodule


module CRA_8
(
    input [7:0] A_in,
    input [7:0] B_in,
    input C_in,
    output [7:0] S_out,
    output C_out
);

    wire c_4;

    CRA_4 CRA_4_1 (.A_in(A_in[3:0]), .B_in(B_in[3:0]), .C_in(C_in), .S_out(S_out[3:0]), .C_out(c_4));
    CRA_4 CRA_4_2 (.A_in(A_in[7:4]), .B_in(B_in[7:4]), .C_in(c_4), .S_out(S_out[7:4]), .C_out(C_out));
endmodule


module CRA_16
(
    input [15:0] A_in,
    input [15:0] B_in,
    input C_in,
    output [15:0] S_out,
    output C_out
);

    wire c_8;

    CRA_8 CRA_8_1 (.A_in(A_in[7:0]), .B_in(B_in[7:0]), .C_in(C_in), .S_out(S_out[7:0]), .C_out(c_8));
    CRA_8 CRA_8_2 (.A_in(A_in[15:8]), .B_in(B_in[15:8]), .C_in(c_8), .S_out(S_out[15:8]), .C_out(C_out));
endmodule


module CRA_32
(
    input [31:0] A_in,
    input [31:0] B_in,
    input C_in,
    output [31:0] S_out,
    output C_out
);

    wire c_16;

    CRA_8 CRA_8_1 (.A_in(A_in[15:0]), .B_in(B_in[15:0]), .C_in(C_in), .S_out(S_out[15:0]), .C_out(c_16));
    CRA_8 CRA_8_2 (.A_in(A_in[31:16]), .B_in(B_in[31:16]), .C_in(c_8), .S_out(S_out[31:16]), .C_out(C_out));
endmodule


module CRA_64
(
    input [64:0] A_in,
    input [64:0] B_in,
    input C_in,
    output [64:0] S_out,
    output C_out
);

    wire c_32;

    CRA_32 CRA_32_1 (.A_in(A_in[31:0]), .B_in(B_in[31:0]), .C_in(C_in), .S_out(S_out[31:0]), .C_out(c_32));
    CRA_32 CRA_32_2 (.A_in(A_in[63:32]), .B_in(B_in[63:32]), .C_in(c_8), .S_out(S_out[63:32]), .C_out(C_out));
endmodule