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
  
    assign S_out = A_in ^ B_in ^ C_in;
    assign C_out = (A_in & B_in) | (C_in & (A_in ^ B_in));
endmodule  