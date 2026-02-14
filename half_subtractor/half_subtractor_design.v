`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 21:36:31
// Design Name: 
// Module Name: half_subtractor_design
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


module half_subtractor_design(
    input a,
    input b,
    output diff,
    output borrow
    );
    assign diff=a^b;
    assign borrow=!a&b;
endmodule
