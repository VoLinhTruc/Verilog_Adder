module My_And_2
(
    input in1,
    input in2,
    output reg out
);

    always @ (in1, in2) begin
        out <= #3 in1 & in2;
    end

endmodule



module My_And_3
(
    input in1,
    input in2,
    input in3,
    output reg out
);

    always @ (in1, in2, in3) begin
        out <= #3 in1 & in2 & in3;
    end

endmodule



module My_And_4
(
    input in1,
    input in2,
    input in3,
    input in4,
    output reg out
);

    always @ (in1, in2, in3, in4) begin
        out <= #3 in1 & in2 & in3 & in4;
    end

endmodule



module My_Or_2
(
    input in1,
    input in2,
    output reg out
);

    always @ (in1, in2) begin
        out <= #3 in1 | in2;
    end

endmodule



module My_Or_3
(
    input in1,
    input in2,
    input in3,
    output reg out
);

    always @ (in1, in2, in3) begin
        out <= #3 in1 | in2 | in3;
    end

endmodule



module My_Or_4
(
    input in1,
    input in2,
    input in3,
    input in4,
    output reg out
);

    always @ (in1, in2, in3, in4) begin
        out <= #3 in1 | in2 | in3 | in4;
    end

endmodule