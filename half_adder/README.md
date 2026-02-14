NOTE: please view in code or raw format

INTRODUCTION:
 
           A half adder is a digital logic circuit that adds two single bit binary numbers and produces outputs as sum and carry.

TRUTH TABLE:
 

 | A | B | Sum | Carry |
 |---|---|-----|-------|
 | 0 | 0 |  0  |   0   |
 | 0 | 1 |  1  |   0   |
 | 1 | 0 |  1  |   0   |
 | 1 | 1 |  0  |   1   |

KMAP:
Sum(AB'+A'B)

      B
      0   1
A  ┌─────────
0  │  0 | 1
1  │  1 | 0

= A ⊕ B


Carry (A · B)

      B
      0   1
A  ┌─────────
0  │  0 | 0
1  │  0 | 1

=A.B

BOOLEAN EXPRESSION:
SUM= a^b
CARRY=a&b

VERILOG CODE:

#DESIGN
module half_adder_design(
    input a,
    input b,
    output sum,
    output carry
    );
    assign sum=a^b;
    assign carry=a&b;
endmodule

#TESTBENCH
module half_adder_tb;
reg a;
reg b;
wire sum;
wire cout;


half_adder uut(.a(a),.b(b),.sum(sum),.cout(cout));

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


APPLICATIONS:
Used as a basic building block for full adder.
Used in ALU arithmetic circuits.
Used in binary addition systems.
