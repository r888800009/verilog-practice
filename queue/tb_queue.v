`timescale 1ns/1ns
module tb_queue;
    reg clk, rst;
    reg in;
    wire out;

    queue queue1(in, out, clk, rst);

    parameter t = 100;

    always #(t / 2) clk = ~clk;

    initial begin

        $dumpfile("queue.vcd");
        $dumpvars;

        rst = 1;
        clk = 1;
        in = 1'b0;

        #(2 * t)
        rst = 0;

        #t in = 1'b0;
        #t in = 1'b1;
        #t in = 1'b1;
        #t in = 1'b0;
        #t in = 1'b0;
        #t in = 1'b0;
        #t in = 1'b1;
        #t in = 1'b1;
        #t in = 1'b1;


        #(10 * t)

        #t $finish;
    end
endmodule
