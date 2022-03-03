module led_ctrl(

  input     wire          clk,
  input     wire          rst_n,
  input     wire          flag,
  
  output    reg           led
);

  always @(posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      led <= 1'b0;
    else
      if (flag == 1'b1)
        led <= ~led;
      else  
        led <= led;
  end

endmodule