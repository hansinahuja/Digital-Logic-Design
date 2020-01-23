`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2019 21:40:01
// Design Name: 
// Module Name: testbench
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



module testbench();
   reg A, B;
   wire Y;
   xor2 DUT(
   .A(A),
   .B(B),
   .Y(Y)
   );
   
   initial begin
    A = 1'b0;
    B = 1'b0;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b0;
    B = 1'b1;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b1;
    B = 1'b1;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b1;
    B = 1'b0;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b0;
    B = 1'b1;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b1;
    B = 1'b1;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b0;
    B = 1'b0;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    A = 1'b1;
    B = 1'b1;
    #50
    $display("A = %b, B = %b, Y = %b", A, B, Y);
    $finish;
   end
endmodule