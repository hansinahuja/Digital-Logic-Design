`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2019 09:10:08
// Design Name: 
// Module Name: demux1to4
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


module demux1to4(
        input I0,
        input C0,
        input C1,
        output y0,
        output y1,
        output y2,
        output y3
    );
    
    assign #3 y0 = (~C0) & (~C1) & I0;
    assign #3 y1 = (C0) & (~C1) & I0;
    assign #3 y2 = (~C0) & (C1) & I0;
    assign #3 y3 = (C0) & (C1) & I0;
    
endmodule

