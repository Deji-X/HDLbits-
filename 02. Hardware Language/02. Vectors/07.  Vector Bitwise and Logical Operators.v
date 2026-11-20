/*
For two 3-bit inputs, produce their bitwise OR,
their logical OR (one bit indicating whether either vector is nonzero),
and both bitwise inverses concatenated with not b in the upper three bits.
*/

// Verilog starter generated from this problem's VHDL interface.
module top_module (
    input wire [2:0] a,
    input wire [2:0] b,
    output wire [2:0] out_or_bitwise,
    output wire out_or_logical,
    output wire [5:0] out_not
);

    // TODO: Implement the behavior described above.
    assign out_ot_bitwise = a || b;
    assign out_or_logical = a | b;
  assign out_not =  {~b, ~a};

endmodule
