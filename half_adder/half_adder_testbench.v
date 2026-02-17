`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2026 19:49:32
// Design Name: 
// Module Name: half_adder_testbench
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


module half_adder_tb;
reg a;
reg b;
wire sum;
wire carry;

half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));

initial
    begin
    a=0; b=0;
    #5;
    a=0; b=1;
    #5;
    a=1; b=0;
    #5;
    a=1; b=1;
    #5;
    $finish;
    end
endmodule