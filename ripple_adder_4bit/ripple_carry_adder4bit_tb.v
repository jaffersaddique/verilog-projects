`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2026 20:53:57
// Design Name: 
// Module Name: ripple_carry_adder4bit_tb
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


module ripple_carry_adder4bit_tb;

    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire[3:0] sum;
    wire cout;
    wire dbg_c3;

    ripple_carry_adder4bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout),
        .dbg_c3(dbg_c3)
    );

    initial begin
        a = 0000; 
        b = 0000; 
        cin = 0;
        #10;
        a = 0100; 
        b = 1000; 
        cin = 0;
        #10;
        a = 1000; 
        b = 1000; 
        cin = 0;
        #50;
        a = 1001; 
        b = 0110; 
        cin = 1;
        #10;
        $finish;
        end
endmodule

