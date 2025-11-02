
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2025 20:35:39
// Design Name: 
// Module Name: Ring_counter_beh
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


module Ring_Johnson_counter_beh(
                input clk,
                input clr,
                input preset,
                output reg [3:0] QR, //  Ring counter
                output reg [3:0] QTR // Twisted Ring counter
    );
    always@(posedge clk)
        begin
            if(preset==1'b1)
                begin
                    QR[0]<=1'b1;
                    QR[3:1]<=QR[2:0];
                    
                     QTR[0] <=1'b1;
                     QTR[3:1] <= QTR[2:0];  
                end
            else if(clr==1'b1)
                begin
                    QR<=4'b0000;
                    QTR<=4'b0000; 
                end
            else 
                begin
                
                    QR  <=  {QR[2:0],QR[3]};
                    
                    QTR <=  {QTR[2:0],~QTR[3]};
                    
                end
       end          
endmodule
