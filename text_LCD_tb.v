`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/12 16:34:23
// Design Name: 
// Module Name: text_LCD_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module text_LCD_tb();

reg clk, rst;
wire LCD_E, LCD_RS, LCD_RW;
wire [7:0] LCD_DATA;
wire [7:0] LED_out;

text_LCD u(clk, rst, LCD_E, LCD_RS, LCD_RW, LCD_DATA, LED_out);

always
    #0.5 clk = ~clk;

initial begin
        clk = 0; rst = 1;
    #20 rst = 0;
    #20 
    #20 
    $finish;
end      

endmodule
