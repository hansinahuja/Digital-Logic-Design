`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2019 21:40:27
// Design Name: 
// Module Name: testbench2
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

module testbench2();
    reg [3:0] a, b;
    reg c0;
    wire [3:0] s;
    wire c4;
    
    adder4bcd DUT(
        .a(a),
        .b(b),
        .c0(c0),
        .s1(s),
        .c4_1(c4)
    );
    
    initial begin
        a = 4'b0010;
        b = 4'b0101;
        c0 = 1'b0;
        #50
        $display("A = %d, B = %d, Y = %d", a, b, s);
        a = 4'b0010;
        b = 4'b0010;
        c0 = 1'b0;
        #50
        $display("A = %d, B = %d, Y = %d", a, b, s);
        a = 4'b0110;
        b = 4'b0110;
        c0 = 1'b0;
        #50
        $display("A = %d, B = %d, Y = %d", a, b, s);
        a = 4'b0101;
        b = 4'b0101;
        c0 = 1'b0;
        #50
        $display("A = %d, B = %d, Y = %d", a, b, s);
        
    end

endmodule
