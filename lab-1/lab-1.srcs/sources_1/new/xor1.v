`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2019 21:38:30
// Design Name: 
// Module Name: xor1
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


module xor1(
    input A,
    input B,
    output Y
    );
    wire out0, out1, out2, out3;
    not #1 U1(out0, A);
    not #1 U2(out1, B);
    and #3 U3(out2, A, out1);
    and #3 U4(out3, B, out0);
    or #2 U5(Y, out2, out3);
endmodule
