`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 09:08:27
// Design Name: 
// Module Name: adder4bcd
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


module adder4bcd(
    input [3:0] a, b,
    input c0,
    output [3:0] s1,
    output c4_1
    );
    wire add_six, w1, c4_0;
    wire [3:0] conditional_six, s0;
 
    adder4 bcd_adder1(
        .a(a),
        .b(b),
        .c0(c0),
        .s(s0),
        .c4(c4_0)
    );
    
    assign #2 w1 = s0[1] | s0[2];
    assign #3 add_six = w1 & s0[3];
    assign #2 conditional_six[0] = add_six & 0;
    assign #2 conditional_six[1] = add_six & 1;
    assign #2 conditional_six[2] = add_six & 1;
    assign #2 conditional_six[3] = add_six & 0;
    
    adder4 bcd_adder2(
        .a(s0),
        .b(conditional_six),
        .c0(c0),
        .s(s1),
        .c4(c4_1)
    );
    
    
    
endmodule
