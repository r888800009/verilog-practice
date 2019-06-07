module queue(in, out, rst, clk);
    input in, rst, clk;
    output out;
    wire [3:0] wires;

   dff dff1(in, wires[0], rst, clk);
   dff dff2(wires[0], wires[1], rst, clk);
   dff dff3(wires[1], wires[2], rst, clk);
   dff dff4(wires[2], wires[3], rst, clk);

   assign out = wires[3];

endmodule

