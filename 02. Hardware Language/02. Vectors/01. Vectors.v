module top_module (
    input  [2:0] vec,
    output [2:0] outv,
    output o2, o1, o0
);

    // Pass the vector through and expose each bit separately.
    
    assign outv = vec;
    /*
    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vec[0];
    */
    assign {o2, o1, o0} = {vec[2], vec[1], vec[0]};

endmodule
