`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2026 17:20:15
// Design Name: 
// Module Name: adder_subractor
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


module adder_subtractor (
    input [3:0]a,
    input [3:0]b,
    input sub,
    output [3:0]sum,
    output cout
);
    wire [3:0] b_xor;
    wire c1, c2, c3;
    assign b_xor = b ^ {4{sub}};   
    full_adder fa0 (.a(a[0]), .b(b_xor[0]), .c(sub), .sum(sum[0]), .carry(c1));
    full_adder fa1 (.a(a[1]), .b(b_xor[1]), .c(c1),  .sum(sum[1]), .carry(c2));
    full_adder fa2 (.a(a[2]), .b(b_xor[2]), .c(c2),  .sum(sum[2]), .carry(c3));
    full_adder fa3 (.a(a[3]), .b(b_xor[3]), .c(c3),  .sum(sum[3]), .carry(cout));
endmodule

module adder_subtractor_tb;
reg [3:0]a;
reg [3:0]b;
reg sub;
wire [3:0]sum;
wire cout;

adder_subtractor uut(.a(a), .b(b), .sub(sub), .sum(sum), .cout(cout));

initial
   begin
   a = 4'd5;  b = 4'd3;  sub = 0;
   #20;
   a = 4'd8;  b = 4'd8;  sub = 0;
   #20;
   a = 4'd7;  b = 4'd5;  sub = 1;
   #20;
   a = 4'd5;  b = 4'd7;  sub = 1;
   #20;
   $finish;
   end
endmodule