module dff(in, out, clk, rst);

    output out;
    input in, clk, rst;

    reg r1;
    assign out = r1;
    always @(posedge clk or rst) begin
        if (clk)
            r1 <= in;
        else if(rst)
            r1 <= 1'b0;
    end

endmodule
