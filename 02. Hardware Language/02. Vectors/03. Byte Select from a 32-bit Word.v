/*
Part-select lets you read out a contiguous range of bits from a vector,
written as vector[high:low].
This is one of the most commonly used pieces of Verilog syntax for working with buses.

Build a circuit with a 32-bit input word and a 2-bit input byte_sel,
and an 8-bit output byte_out.
Depending on byte_sel, output one of the four bytes that make up word.

INTERFACE
Signal	  | Direction	| Width	| Description
------------------------------------------------------------------
word	    | input	    | 32	  | Input word
byte_sel	| input	    | 2	    | Selects which byte of word to output
byte_out	| output	  | 8	    | Selected byte of word

TRUTH TABLE
byte_sel	| byte_out
-----------------------
0	        | word[7:0]
1	        | word[15:8]
2	        | word[23:16]
3	        | word[31:24]

NOTES
  o  Part-select syntax word[15:8] extracts an 8-bit slice starting at bit 15 down
  to bit 8.
  o  Combine part-selects with the ternary operator
  (or a case inside an always block) to choose between them based on byte_sel.
*/

module top_module (
    input [31:0] word,
    input [1:0] byte_sel,
    output [7:0] byte_out
);

    // byte_sel selects which of the 4 bytes of word to output:
    // 0 -> word[7:0], 1 -> word[15:8], 2 -> word[23:16], 3 -> word[31:24]
    always @(*) begin
        case (byte_sel)
        2'b00: byte_out = word[7:0];
        2'b01: byte_out = word[15:8];
        2'b10: byte_out = word[23:16];
        2'b11: byte_out = word[31:24];
        endcase
    end
endmodule
