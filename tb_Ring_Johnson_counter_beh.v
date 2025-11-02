`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2025 20:41:21
// Design Name: 
// Module Name: tb_Ring_counter_beh
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


module tb_Ring_counter_beh;

wire [3:0]QR,QTR;
reg  clk,clr,preset;

Ring_Johnson_counter_beh uut(.clk(clk),.clr(clr),.preset(preset),.QR(QR),.QTR(QTR));

initial
        begin
            clk=1'b0;
            clr=1'b0;
            preset=1'b0;
            
            forever #5 clk=~clk;
        end
        
initial
    begin
        #10; clr=1'b1;
        #10; clr=1'b0;
        
        #10;
        #10;
        preset=1'b1;
        #10;
        preset=1'b0;
        #10;
        
       
       #100; 
       clr=1'b1;
       #10;
       clr=1'b0;
       #10;
       preset=1'b1;
       #20;
       preset=1'b0;
       
       #100;
        $finish ;
   end 

endmodule
