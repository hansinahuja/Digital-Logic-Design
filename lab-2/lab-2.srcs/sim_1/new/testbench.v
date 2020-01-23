`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2019 09:49:57
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
   reg [3:0] a, b;
   reg c0;
   wire [3:0] s;
   wire c4;
  
   adder4 DUT(
   .a(a),
   .b(b),
   .c0(c0),
   .s(s),
   .c4(c4)
   );
   
   initial begin
    a = 4'b0000;
    b = 4'b0000;
    c0 = 1'b0;
   end
   
   always begin
        a = a+1;
        b = b-1;
        #25
        $display("a = %b, b = %b, s = %b, c4 = %b", a, b, s, c4);
   end
endmodule
