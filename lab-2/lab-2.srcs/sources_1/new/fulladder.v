`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2019 09:20:08
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    wire t0, t1, t2, t3, t4;
    assign #4 t0 = a^b;
    assign #4 sum = t0^cin;
    assign #2 t1 = a & b;
    assign #2 t2 = a & cin;
    assign #2 t3 = b & cin;
    assign #2 t4 = t1 | t2;
    assign #2 cout = t4 | t3;
     
    
endmodule
