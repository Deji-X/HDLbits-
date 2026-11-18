// Verilog starter generated from this problem's VHDL interface.
module top_module (
        input wire a,
    input wire b,
    input wire c,
    output wire y
);

    // TODO: Implement the behavior described above.
    wire d;
    assign d = a & b;
    assign y = c | d;

endmodule
