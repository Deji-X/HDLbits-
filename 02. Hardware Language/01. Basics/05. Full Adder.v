/*
A full adder extends the half adder by also accepting a carry-in bit, making it possible to chain multiple full adders together to build multi-bit adders (see the ripple-carry adder problem in Modules & Hierarchy).

Build a circuit with inputs a, b, and cin, and outputs sum and cout, implementing a full adder.


INTERFACE

Signal	| Direction	| Width	| Description
-------------------------------------------
a	      | input	    | 1	    | Operand
b	      | input	    | 1	    | Operand
cin	    | input	    | 1	    | Carry-in
sum	    | output	  | 1	    | Sum bit
cout	  | output	  | 1	    | Carry-out bit

TRUTH TABLE
a	| b	| cin	| sum	| cout
------------------------
0	| 0	| 0	  | 0	  | 0
0	| 0	| 1	  | 1   | 0
0	| 1	| 0	  | 1	  | 0
0	| 1	| 1	  | 0	  | 1
1	| 0	| 0	  | 1	  | 0
1	| 0	| 1	  | 0	  | 1
1	| 1	| 0	  | 0	  | 1
1	| 1	| 1	  | 1	  | 1

NOTES
sum is the XOR of all three inputs.
cout is 1 whenever at least two of the three inputs are 1 (a 3-input majority function).
*/


module top_module (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    // sum = a XOR b XOR cin
    // cout = majority(a, b, cin)
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule
