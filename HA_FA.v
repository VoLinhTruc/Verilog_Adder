// ------------------------------------------
// Half Adder and Full Adder
// ------------------------------------------

module HA 
(
    input A_in,  
    input B_in, 
    output S_out, 
    output C_out
);  
  
    assign S_out = A_in ^ B_in;
    assign C_out = A_in & B_in;
endmodule  

module FA 
(
    input A_in,  
    input B_in, 
    input C_in,   
    output S_out, 
    output C_out
);  
  
    wire  w1;

    wire w2;
    wire w3;
    wire w4;


    My_Xor_2 xor2_1(A_in, B_in, w1);
    My_Xor_2 xor2_2(w1, C_in, S_out);

    My_Xor_2 xor2_3(A_in, B_in, w2);
    My_And_2 and2_1(C_in, w2, w3);
    My_And_2 and2_2(A_in, B_in, w4);
    My_Or_2 or2_1(w3, w4, C_out);


    // assign S_out = A_in ^ B_in ^ C_in;
    // assign C_out = (A_in & B_in) | (C_in & (A_in ^ B_in));
endmodule  