
// This module is used for simulation (begin) ----------------------------------------------------------------------------------
module TestBench;  
    // 1. Declare testbench variables     
   reg [15:0] a;  
   reg [15:0] b;  
   reg c_in;  
   wire [15:0] sum;  
   wire c_out; 
  
    // 2. Instantiate the design and connect to testbench variables  
   // CRA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Carry Ripple Adder 16bit
   // CLA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Carry Lookahead Adder 16bit
   // LCLA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Ling Adder 16bit
   LCRA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Carry Ripple Adder 16bit
  
    // 3. Provide stimulus to    test the design  
   integer i; 
   initial begin  
      // a = 0;  
      // b = 0;  
      c_in = 1; 
      // c_in = 0; 
  
      // $monitor ("a=%d b=%d c_in=%d sum=%d c_out=%d", a, b, c_in, sum, c_out);  
      $monitor ("sum=%d c_out=%d", sum, c_out); 
  
        // Use a for loop to apply random values to the input 

      // for (i = 1000; i < 1050; i = i+1) begin  
      //   #50 a = i;  
      //   b = i+1;  
      // end  


      a = 65535; b = 0;
      #50 a = 0; b = 0;

      // #50 a = 1024; b = 1023;
      // #50 a = 1024; b = 1023;
      // #50 a = 1024; b = 1023;
      // #50 a = 1024; b = 1023;
      // #50 a = 1024; b = 1023;
   end  
endmodule  
// This module is used for simulation (end) ----------------------------------------------------------------------------------




// This module is used for synth (begin) ----------------------------------------------------------------------------------
module TestBench
(
    input  [3:0] A_in,
    input  [3:0] B_in,
    input  C_in,
    output [3:0] S_out,
    output C_out
);

   // CRA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Carry Ripple Adder 16bit
   // CLA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Carry Lookahead Adder 16bit
   // LCLA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Ling Adder 16bit
   LCRA_16  adder(.A_in(a), .B_in(b), .C_in(c_in), .S_out(sum), .C_out(c_out)); // Carry Ripple Adder 16bit
 
endmodule 
// This module is used for synth (end) ---------------------------------------------------------------------------------- 
