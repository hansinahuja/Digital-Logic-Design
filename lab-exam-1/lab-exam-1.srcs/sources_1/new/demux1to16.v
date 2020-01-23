`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2019 09:12:10
// Design Name: 
// Module Name: demux1to16
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


module demux1to16(
        input I0,
        input C3,
        input C2,
        input C1,
        input C0,
        output [15:0] Y
    );
    
    wire y0, y1, y2, y3;
    
    demux1to4 U1(I0, C2, C3, y0, y1, y2, y3);
    demux1to4 U2(y0, C0, C1, Y[0], Y[1], Y[2], Y[3]);
    demux1to4 U3(y1, C0, C1, Y[4], Y[5], Y[6], Y[7]);    
    demux1to4 U4(y2, C0, C1, Y[8], Y[9], Y[10], Y[11]);
    demux1to4 U5(y3, C0, C1, Y[12], Y[13], Y[14], Y[15]);
    
endmodule
