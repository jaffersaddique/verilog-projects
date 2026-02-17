`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 08:55:18
// Design Name: 
// Module Name: full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module full_adder_tb;
   reg a;
   reg b;
   reg c;
   wire sum;
   wire carry;
   
     full_adder uut(
     .a(a),
     .b(b),
     .c(c),
     .sum(sum),
     .carry(carry));
     
          initial
              begin
                 a=0; b=0; c=0;
                 #3;
                 a=0; b=1; c=0;
                 #3;
                 a=0; b=1; c=1;
                 #3;
                 a=1; b=0; c=0;
                 #3;
                 a=1; b=0; c=1;
                 #3;
                 a=1; b=1; c=0;
                 #3;
                 a=1; b=1; c=1;
                 #3;
                 $finish;
                 end
endmodule
