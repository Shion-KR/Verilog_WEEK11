`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/12 00:44:50
// Design Name: 
// Module Name: solid_LED_PWM_tb
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


module solid_LED_PWM_tb();

reg clk, rst;
reg [7:0] bin;
wire [7:0] seg_data;
wire [7:0] seg_sel;
wire led_signal;

solid_LED_PWM u(clk, rst, bin, seg_data, seg_sel, led_signal);

always
    #0.5 clk = ~clk;
    
initial begin
        clk = 0; rst = 1; bin = 8'b00000000;
    #10 rst = 0; bin = 8'b00000000; // 0%
    #256 bin = 8'b00111111; // 25%    
    #256 bin = 8'b01111111; // 50%  
    #256 bin = 8'b10111111; // 75%
    #256 bin = 8'b11111111; // 100%
    $finish;
end
endmodule
