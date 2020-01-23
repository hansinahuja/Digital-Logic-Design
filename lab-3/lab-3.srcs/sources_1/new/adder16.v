`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 09:08:27
// Design Name: 
// Module Name: adder16
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


module adder16(
    input [15:0] a, b,
    input c0,
    output [15:0] s,
    output c16
    );
    wire ci[0:4];
    genvar i;
    assign ci[0] = c0;
    generate for (i=0; i<4; i=i+1) begin: adder_loop
    adder4 adder_obj(
        .a(a[(4*i +3):(4*i)]),
        .b(b[(4*i +3):(4*i)]),
        .c0(ci[i]),
        .s(s[(4*i +3):(4*i)]),
        .c4(ci[i+1])
     );
    end
    endgenerate
    assign c16 = ci[4];

endmodule
