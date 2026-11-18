/*
The simplest possible circuit: an output that never changes. This introduces the continuous assignment statement (assign) and Verilog’s constant literals.

Build a circuit with no inputs and one output, one. That output should always be driven to logic 1.

Interface
Signal	| Direction	| Width	| Description
------------------------------------------------
one	    | output	  | 1	    | Always driven to 1

NOTES
Use a continuous assignment (assign) outside of any procedural block.
A single-bit constant can be written as 1'b1 (or just 1 â€” Verilog will interpret it as logic 1 in a single-bit context).
*/


module top_module (
    output one
);

    // Drive 'one' to logic 1 at all times.
    assign one = 1'b1;

endmodule
