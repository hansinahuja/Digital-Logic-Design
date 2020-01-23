`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2019 09:20:49
// Design Name: 
// Module Name: xor2
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


module xor2(
    input A,
    input B,
    output Y
    );
    wire out0, out1, out2, out3;
    assign #1 out0 = ~B;
    assign #1 out1 = ~A;
    assign #3 out2 = A & out0;
    assign #3 out3 = B & out1;
    assign #2 Y = out2 | out3;
endmodule
