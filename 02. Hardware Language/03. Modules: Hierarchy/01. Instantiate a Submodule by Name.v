/*
Verilog designs are built hierarchically: larger circuits are composed of smaller, already-designed submodules. To use a submodule, you instantiate it â€” giving the instance a name and connecting its ports to signals in the enclosing module.

You are given a submodule mod_a that implements a 2-input AND gate:

module mod_a (
    input in1,
    input in2,
    output out
);
    assign out = in1 & in2;
endmodule
Build top_module with inputs a and b and output out. Instantiate one copy of mod_a, connecting a to in1, b to in2, and out to out.

Interface
Signal	Direction	Width	Description
a	input	1	Connects to mod_a.in1
b	input	1	Connects to mod_a.in2
out	output	1	Connects to mod_a.out
Notes
Named port connection syntax is instance_name ( .port_name(signal_name), ... ). Each .port_name(signal) explicitly states which submodule port connects to which signal, regardless of declaration order â€” this is safer than positional connection.
Do not modify mod_a; only write top_module.
*/
