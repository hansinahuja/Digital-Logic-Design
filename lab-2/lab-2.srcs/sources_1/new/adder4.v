`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2019 09:20:08
// Design Name: 
// Module Name: adder4
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

module adder4(
    input [3:0] a, b,
    input c0,
    output [3:0] s,
    output c4
    );
    wire c1, c2, c3;
    fulladder f0(
        .a(a[0]),
        .b(b[0]),
        .cin(c0),
        .sum(s[0]),
        .cout(c1)
    );
    fulladder f1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(s[1]),
        .cout(c2)
    );
    fulladder f2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(s[2]),
        .cout(c3)
    );
    fulladder f3(
        .a(a[3]),
        .b(b[3]),
        .cin(c3),
        .sum(s[3]),
        .cout(c4)
    );
endmodule
