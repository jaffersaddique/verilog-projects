**NOTE: please view in code format**

INTRODUCTION:

A full adder is a digital logic circuit that adds three single bit binary numbers (A, B, and Carry-in) and produces outputs as Sum and Carry-out.

TRUTH TABLE:

| A | B | Cin | Sum | Cout |
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

KMAP:

Sum = A ⊕ B ⊕ Cin

   BC
        00  01  11  10
A   ┌──────────────────
0   │  0   1   0   1
1   │  1   0   1   0

Carry = AB + BCin + ACin
    BC
        00  01  11  10
A   ┌──────────────────
0   │  0   0   1   0
1   │  0   1   1   1

BOOLEAN EXPRESSION:

SUM = a ^ b ^ cin
COUT = (a & b) | (b & cin) | (a & cin)

VERILOG CODE:

#DESIGN
module full_adder_design(
input a,
input b,
input cin,
output sum,
output cout
);
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

#TESTBENCH
module full_adder_tb;
reg a;
reg b;
reg cin;
wire sum;
wire cout;

full_adder_design uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
a = 0; b = 0; cin = 0; #5;
a = 0; b = 0; cin = 1; #5;
a = 0; b = 1; cin = 0; #5;
a = 0; b = 1; cin = 1; #5;
a = 1; b = 0; cin = 0; #5;
a = 1; b = 0; cin = 1; #5;
a = 1; b = 1; cin = 0; #5;
a = 1; b = 1; cin = 1; #5;
$finish;
end
endmodule

APPLICATIONS:
Used as a basic building block for ripple carry adder.
Used in ALU arithmetic circuits.
Used in binary addition systems.
