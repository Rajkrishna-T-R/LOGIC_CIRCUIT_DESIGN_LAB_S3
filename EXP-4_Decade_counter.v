`timescale 1ns / 1ps
module decade_counter(count,clk,clr);
  input clk;
  input clr;
  output reg [3:0]count;
  
  always@(posedge clk or posedge clr)
    begin
      if(clr==1'b1)
        begin
          count<=4'b0000;
        end
      else if(count==4'b1001)
        begin
          count<=4'b0000;
        end
      else 
        begin
          
          count<=count+1;
        
        end
      
    end
endmodule
