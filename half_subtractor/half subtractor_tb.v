`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 21:35:22
// Design Name: 
// Module Name: half subtractor_tb
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

module half_subtractor_tb;
reg a;
reg b;
wire diff;
wire borrow;

half_subtractor_design uut (
    .a(a),
    .b(b),
    .diff(diff),
    .borrow(borrow)
);

initial begin
    a = 0; b = 0; #5;
    a = 0; b = 1; #5;
    a = 1; b = 0; #5;
    a = 1; b = 1; #5;
    $finish;
    end
endmodule

