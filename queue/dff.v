module dff(in, out, clk, rst);

    output out;
    input in, clk, rst;

    reg out;
    always @(posedge clk or rst) begin
        if (clk)
            out <= in;
        else if(rst)
            out <= 1'b0;
    end

endmodule
