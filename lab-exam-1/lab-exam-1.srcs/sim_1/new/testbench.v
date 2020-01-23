`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2019 09:32:24
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
    
    reg [3:0] C;
    reg I0;
    wire [15:0] Y;
    
    demux1to16 DUT(I0, C[3], C[2], C[1], C[0], Y);
    
    initial begin
        C = 0;
        I0 = 0;
    end
    
    always begin
        C = C + 1;
        #45;
        $display("I0 = %b, C = %b, Y = %b", I0, C, Y);
    end
    
    always begin
        I0 = (I0 + 1)%2;
        #800;
    end

endmodule
