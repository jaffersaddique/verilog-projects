`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2026 20:50:30
// Design Name: 
// Module Name: ripple_carry-adder4bit_design
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


module ripple_carry_adder4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout,
    output dbg_c3
);
    wire c1, c2, c3;
    full_adder fa0 (.a(a[0]), .b(b[0]), .c(cin), .sum(sum[0]), .carry(c1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .c(c1),  .sum(sum[1]), .carry(c2));
    full_adder fa2 (.a(a[2]), .b(b[2]), .c(c2),  .sum(sum[2]), .carry(c3));
    full_adder fa3 (.a(a[3]), .b(b[3]), .c(c3),  .sum(sum[3]), .carry(cout));
    assign dbg_c3 = c3;
endmodule


