// module TestBench;  
//     // 1. Declare testbench variables     
//    reg [15:0] a;  
//    reg [15:0] b;  
//    reg c_in;  
//    wire [15:0] sum;  
//    wire c_out; 
  
//     // 2. Instantiate the design and connect to testbench variables  
//    CLA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out));
  
//     // 3. Provide stimulus to test the design  
//    integer i; 
//    initial begin  
//       a = 0;  
//       b = 0;  
//       c_in = 0;  
  
//       $monitor ("a=%d b=%d c_in=%d sum=%d c_out=%d", a, b, c_in, sum, c_out);  
  
//         // Use a for loop to apply random values to the input  
//       for (i = 32760; i < 32775; i = i+1) begin  
//         #20 a = i;  
//         b = i;  
//       end  
//    end  
// endmodule  





module TestBench
(
    input  [3:0] A_in,
    input  [3:0] B_in,
    input  C_in,
    output [3:0] S_out,
    output C_out
);


   CLA_16  adder(.A_in(A_in), .B_in(B_in), .C_in(C_in), .S_out(S_out), .C_out(C_out));
 
endmodule  
