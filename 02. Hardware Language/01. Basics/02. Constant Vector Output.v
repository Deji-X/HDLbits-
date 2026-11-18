/*
Extend the idea of a constant output to a multi-bit vector. Verilog vector constants are written as <width>'b<binary digits> (or 'h for hex, 'd for decimal).

Build a circuit with one 8-bit output, out, that is always driven to the constant byte 8'b10100101 (0xA5).

INTERFACE
Signal	| Direction	| Width	| Description
------------------------------------------------------------
out	    | output	    | 8	    | Always driven to 8'b10100101

NOTES
  o  out[7] is the most-significant bit (1), out[0] is the least-significant bit (1).
  o  Note the VHDL port here is named out_bus because out is a reserved keyword in VHDL.
*/

module top_module (
    output [7:0] out
);

    // Drive 'out' to the constant byte 8'b10100101 at all times.
    assign out = 8'b10100101;

endmodule
