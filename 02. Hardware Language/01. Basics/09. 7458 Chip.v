/*
Drive p1y with (p1a and p1b and p1c) or (p1d and p1e and p1f).
Drive p2y with (p2a and p2b) or (p2c and p2d).
Keep the two sections independent.
*/

// Verilog starter generated from this problem's VHDL interface.
module top_module (
        input wire p1a,
    input wire p1b,
    input wire p1c,
    input wire p1d,
    input wire p1e,
    input wire p1f,
    input wire p2a,
    input wire p2b,
    input wire p2c,
    input wire p2d,
    output wire p1y,
    output wire p2y
);

    // TODO: Implement the behavior described above.
  wire p1abc, p1def, p2ab, p2cd;

  assign p1abc = (p1a & p1b & p1c);
  assign p1def = (p1d & p1e & p1f);
  assign p1y = (p1abc | p1def);

  assign p2ab = (p2a & p2b);
  assign p2cd = (p2c & p2d);

  assign p2y = (p2ab|p2cd);
endmodule
