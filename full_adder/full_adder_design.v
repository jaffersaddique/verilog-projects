`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 08:52:04
// Design Name: 
// Module Name: full_adder_design
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


module full_adder_design(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    assign sum=a^b^c;
    assign carry=a&b|b&c|c&a;
endmodule
