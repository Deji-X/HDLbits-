/*
Sometimes a bus needs to be wired “backwards”, for example when interfacing with a peripheral that expects the opposite bit order. The concatenation operator {} lets you rearrange individual bits into any order you like.

Build a circuit with an 8-bit input in and an 8-bit output out, where out is in with its bit order reversed: out[7] = in[0], out[6] = in[1], and so on, down to out[0] = in[7].

Interface
Signal	Direction	Width	Description
in	input	8	Input vector
out	output	8	in with bit order reversed
Example
If in = 8'b11001000, then out = 8'b00010011.

Notes
The concatenation operator {a, b, c, ...} joins signals together, with the leftmost item becoming the most-significant bits of the result.
{in[0], in[1], ..., in[7]} places in[0] in the MSB position and in[7] in the LSB position â€” exactly a bit reversal.
*/

module top_module (
    input [7:0] in,
    output [7:0] out
);

    // Reverse the bit order: out[0] = in[7], out[7] = in[0], etc.

endmodule
