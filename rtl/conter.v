module counter_2bit(
    input clk,
    input reset,
    output reg [1:0] count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        count <= 2'b00;
    else
        count <= count + 1'b1;
end

endmodule
