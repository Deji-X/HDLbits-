/*
A half adder adds two single bits together, producing a sum bit and a carry-out bit. It’s the simplest building block of binary addition circuits, but it cannot accept a carry-in â€” that requires a full adder.

Build a circuit with inputs a and b, and outputs sum and cout, implementing a half adder.

INTERFACE
Signal	| Direction	| Width	| Description
----------------------------------------------------
a	      | input	    | 1	    | Operand
b	      | input	    | 1	    | Operand
sum	    | output	  | 1	    | Sum bit, a XOR b
cout	  | output	  | 1	    | Carry-out bit, a AND b

TRUTH TABLE
a	| b	| sum	| cout
------------------
0	| 0	| 0	  | 0
0	| 1	| 1	  | 0
1	| 0	| 1	  | 0
1	| 1	| 0	  | 1

NOTES
sum is the XOR of the two inputs.
cout is the AND of the two inputs (a carry only occurs when both bits are 1).
*/

module top_module (
    input a,
    input b,
    output sum,
    output cout
);

    // sum = a XOR b
    // cout = a AND b
    assign sum = a ^ b;
    assign cout = a & b;

endmodule
