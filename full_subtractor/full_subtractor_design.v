`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2026 20:35:56
// Design Name: 
// Module Name: full_subtractor_design
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

module full_subtractor (
    input a,        
    input b,        
    input bin,      
    output diff,    
    output bout
);
assign diff = a^b^bin;
assign bout= (!a&b)|(!a&bin)|(b&bin);
endmodule

