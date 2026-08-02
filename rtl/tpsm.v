module tpsm(
    input [3:0] ps,
    input clk,
    input rst,
    output [3:0] LED,
    output [1:0] count,
    output en
);

counter_2bit counter_inst(
    .clk(clk),
    .reset(rst),
    .count(count)
);

mux mux_inst(
    .i0(ps[0]),
    .i1(ps[1]),
    .i2(ps[2]),
    .i3(ps[3]),
    .sel(count),
    .y(en)
);

decoder decoder_inst(
    .a(count),
    .en(en),
    .y(LED)
);

endmodule
