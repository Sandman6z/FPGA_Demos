module led
(
    input sys_clk,
    input sys_rst_n,
    output reg[2:0] led
);

reg [23:0] counter;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        counter <= 24'd0;
    else if (counter < 24'd1200_0000)
        counter <= counter + 1;
    else
        counter <= 24'd0;

end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        led <= 3'b110;
    else if(counter == 24'd1200_0000)
        led[2:0] <= {led[1:0],led[2]};
    else
        led <= led;

end

endmodule