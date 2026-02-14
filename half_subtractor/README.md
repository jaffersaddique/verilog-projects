**NOTE: please view in code or raw format**

INTRODUCTION:

A half subtractor is a digital logic circuit that subtracts two single bit binary numbers and produces outputs as Difference and Borrow.

TRUTH TABLE:

| A | B | Difference | Borrow |
| 0 | 0 |     0      |   0    |
| 0 | 1 |     1      |   1    |
| 1 | 0 |     1      |   0    |
| 1 | 1 |     0      |   0    |

KMAP:

Difference (A'B + AB') = A ⊕ B

  B
  0   1
A  ┌─────────
0  │  0 | 1
1  │  1 | 0

= A ⊕ B

Borrow (A' · B)

  B
  0   1
A  ┌─────────
0  │  0 | 1
1  │  0 | 0

= A' · B

BOOLEAN EXPRESSION:

DIFFERENCE = a ^ b
BORROW = !a & b

VERILOG CODE:

#DESIGN
module half_subtractor_design(
input a,
input b,
output diff,
output borrow
);
assign diff = a ^ b;
assign borrow = (~a) & b;
endmodule

#TESTBENCH
module half_subtractor_tb;
reg a;
reg b;
wire diff;
wire borrow;

half_subtractor_design uut(.a(a), .b(b), .diff(diff), .borrow(borrow));
initial
begin
a = 0; b = 0; #5;
a = 0; b = 1; #5;
a = 1; b = 0; #5;
a = 1; b = 1; #5;
$finish;
end
endmodule

APPLICATIONS:

Used as a basic building block for full subtractor.
Used in arithmetic logic units (ALU).
Used in binary subtraction circuits.
