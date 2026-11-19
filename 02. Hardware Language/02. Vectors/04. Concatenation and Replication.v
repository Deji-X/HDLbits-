/*
The concatenation operator {a, b} joins vectors together,
and the replication operator {n{a}} repeats a vector n times.
Together they are the standard way to build wider buses out of narrower pieces.

Build a circuit with four 8-bit inputs byte3, byte2, byte1,
byte0 and a 2-bit input pattern.

Produce:
word (32 bits): the four bytes concatenated together with byte3 as the most-significant byte and byte0 as the least-significant byte.
repeated (8 bits): the 2-bit pattern replicated four times to fill all 8 bits.


INTERFACE

Signal	  | Direction	| Width	| Description
-----------------------------------------------------------
byte3	    | input	    | 8	    | Most-significant byte of word
byte2	    | input	    | 8	    | 
byte1	    | input	    | 8	    | 
byte0	    | input	    | 8	    | Least-significant byte of word
pattern	  | input	    | 2	    | 2-bit pattern to replicate
word	    | output	  | 32	  | {byte3, byte2, byte1, byte0}
repeated	| output	  | 8	    | pattern repeated four times


NOTES
{byte3, byte2, byte1, byte0} produces a 32-bit result: byte3 occupies bits [31:24].
{4{pattern}} replicates the 2-bit pattern four times, producing an 8-bit result.
*/

module top_module (
    input [7:0] byte3,
    input [7:0] byte2,
    input [7:0] byte1,
    input [7:0] byte0,
    input [1:0] pattern,
    output [31:0] word,
    output [7:0] repeated
);

    // word: concatenate the four bytes into a 32-bit word, byte3 as MSB.
    // repeated: replicate the 2-bit 'pattern' four times to fill 8 bits.
    assign word = {byte3, byte2, byte1, byte0};

    assign repeated = {pattern, pattern, pattern, pattern};

endmodule
module top_module (
    input [7:0] byte3,
    input [7:0] byte2,
    input [7:0] byte1,
    input [7:0] byte0,
    input [1:0] pattern,
    output [31:0] word,
    output [7:0] repeated
);

    // word: concatenate the four bytes into a 32-bit word, byte3 as MSB.
    // repeated: replicate the 2-bit 'pattern' four times to fill 8 bits.
    

endmodule
