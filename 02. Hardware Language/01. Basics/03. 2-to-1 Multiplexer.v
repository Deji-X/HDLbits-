/*
Multiplexers select between multiple inputs based on a select signal. The simplest one, a 2-to-1 mux, can be written in a single line using Verilog’s conditional (ternary) operator ?:.

Build a circuit with two data inputs a and b, a select input sel, and an output out. When sel is 0, out should equal a; when sel is 1, out should equal b.


INTERFACE
Signal	| Direction	| Width	| Description
---------------------------------------------------------------
a	      | input	    | 1	    | Data input, selected when sel = 0
b	      | input	    | 1	    | Data input, selected when sel = 1
sel	    | input	    | 1	    | Select signal
out	    | output	  | 1	    | Selected data output

TRUTH TABLE
sel	| out
--------
0	  | a
1	  | b

NOTES
Use a single assign statement with the ternary operator:
condition ? value_if_true : value_if_false.
*/

module top_module (
    input a,
    input b,
    input sel,
    output out
);

    // out = a when sel is 0, b when sel is 1.
    assign out = (sel == 0) ? a : b; 

endmodule
