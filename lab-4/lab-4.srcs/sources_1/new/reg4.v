`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2019 09:43:12
// Design Name: 
// Module Name: reg4
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


module reg4(
    input clk,
    output reg [3:0]counter
    );
//    reg clk;
//reg [3:0]ctt=0;
initial begin
counter =0 ;
end
always @(posedge clk)begin
//    ctt=ctt+1;
    counter=counter+1;
end
endmodule
