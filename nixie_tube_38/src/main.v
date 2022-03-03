module nixietube(
    input a,    //输入按键1、2、3
    input b,
    input c,
    input d,

    output  [15:0]   nixie  //8位输出
);
    reg [15:0]   nixie;      //将数码管变成寄存器型，可以在always中赋值

always @(a, b, c, d)       //a,b,c,d为敏感事件
    begin
        case({a, b, c, d})     //{a,b,c,d}的意思是将a,b,c,d拼接在一起
            4'b0000: nixie = 8'b11111100;
            4'b0001: nixie = 8'b01100000;
            4'b0010: nixie = 8'b11011010;
            4'b0011: nixie = 8'b11110010;
            4'b0100: nixie = 8'b01100110;
            4'b0101: nixie = 8'b10110110;
            4'b0110: nixie = 8'b10111110;
            4'b0111: nixie = 8'b11100000;   //7
            4'b1000: nixie = 8'b11111110;
            4'b1001: nixie = 8'b11110110;
            4'b1010: nixie = 8'b11101110;
            4'b1011: nixie = 8'b00111110;
            4'b1100: nixie = 8'b00011010;
            4'b1101: nixie = 8'b01111010;
            4'b1110: nixie = 8'b10011110;
            4'b1111: nixie = 8'b10001110;
        endcase
    end

endmodule    