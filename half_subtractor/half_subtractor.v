`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 21:46:36
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor(
    input a,
    input b,
    output diff,
    output borrow
    );
    assign diff=a^b;
    assign borrow=!a&b;
endmodule

module half_subtractor_tb;
reg a;
reg b;
wire diff;
wire borrow;

half_subtractor uut (
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
