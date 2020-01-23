`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 09:39:02
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
    reg [15:0] a, b;
    reg c0;
    wire [15:0] s;
    wire c4;
    
    adder16 DUT(
        .a(a),
        .b(b),
        .c0(c0),
        .s(s),
        .c16(c4)
    );
    
    initial begin
    a = 16'b0000000000000000;
    b = 16'b0000000000000000;
    c0 = 1'b0;
   end
    
    always begin
        a = a+1;
        b = b-1;
        #70
        $display("a = %d, b = %b, s = %d, c4 = %b", a, b, s, c4);
   end
    
endmodule
