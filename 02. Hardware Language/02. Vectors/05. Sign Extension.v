/*
When widening a signed value,
the new upper bits must be copies of the original sign bit (the most-significant bit),
not zeros â€” otherwise a negative number would turn positive.
This is called sign extension.

Build a circuit with an 8-bit signed input in (two’s complement)
and a 16-bit signed output out, where out is the sign-extended version of in.

INTERFACE
Signal	| Direction	| Width	 |  Description
-----------------------------------------------------------------
in	    | input	    | 8      | Signed (two’s complement) input
out	    | output    | 16	   | Sign-extended 16-bit version of in

EXAMPLES

in (binary)	| in (decimal)	| out (binary)	    | out (decimal)
-----------------------------------------------------------
00000101	  | 5	            | 0000000000000101	| 5
11111011	  | -5	          | 1111111111111011	| -5


NOTES

in[7] is the sign bit. Replicate it 8 times and prepend it to in: {{8{in[7]}}, in}.
Zero-extension (padding with 0s) would be incorrect here since it does not preserve the value of negative numbers.
*/

module top_module (
    input [7:0] in,
    output [15:0] out
);

    // Sign-extend the 8-bit signed value 'in' to 16 bits.
   assign out = {{8{in[7]}}, in};

endmodule
