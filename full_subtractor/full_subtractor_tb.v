`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2026 20:37:05
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
reg a;
reg b;
reg bin;
wire diff;
wire bout;

full_subtractor uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

initial
begin
    a=0; b=0; bin=0;
    #5;
    a=0; b=0; bin=1;
    #5;
    a=0; b=1; bin=0;
    #5;
    a=0; b=1; bin=1;
    #5;
    a=1; b=0; bin=0;
    #5;
    a=1; b=0; bin=1;
    #5;
    a=1; b=1; bin=0;
    #5;
    a=1; b=1; bin=1;
    #5;
    $finish;
end
endmodule

