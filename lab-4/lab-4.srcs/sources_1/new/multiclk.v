`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2019 10:18:32
// Design Name: 
// Module Name: multiclk
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


module multiclk(
    input [1:0]bus,
//    input reset,
    input clk,
    output reg [3:0]counter
    );
//    reg clk;
reg [31:0] div;
//reg [3:0]ctt=0;
reg clk1, clk2, clk3, final_clk;
initial begin
counter=0;
div =0 ;
clk1=0;
clk2=0;
clk3=0;
end

always @(posedge clk)begin
       div=div+1;
       if(div==25000000) begin
            div = 0;
            clk1 = ~clk1;
       end
end

always @(posedge clk1)begin
    clk2 = ~clk2;
end 

always @(posedge clk2)begin
    clk3 = ~clk3;
end 

always @(*) begin
    final_clk = bus[1]&~bus[0]&clk1 | ~bus[1]&~bus[0]&clk2 | ~bus[1]&bus[0]&clk3;
end

always @(posedge final_clk) begin
    counter = counter + 1;
end

//always @(posedge reset) begin
//    counter = 0;
//end 
       
//    ctt=ctt+1;
//    counter=counter+1;
    
//end
endmodule
