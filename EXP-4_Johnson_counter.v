// Code your design here
`timescale 1ns / 1ps
module D_flip_flop(

                    D,
                    
                    PRESET,
                    
                    CLR,
                    
                    CLK,
                    
                    Q,
                    
                    Qbar
                    
                    );


input  D;

input PRESET;

input CLR;

input  CLK;

output reg Q;

output wire Qbar;


always@(posedge CLK or posedge PRESET or posedge CLR)

    begin
       
        if(PRESET==1)
        
            begin
            
                Q<=1;
                
            end    
         
        else if(CLR==1)
        
            begin
            
                Q<=0;   
            end
         
          else
          
            begin 
            
                Q<=D;
                
            end
       
    end
    
    assign Qbar=~Q;
    
endmodule
module Johnson_counter(


                            
                            input clk,
                            
                            input rst,
                            
                            input pre1,
  
                            input pre_234,
                            
                            output [3:0] Q,
                            
                            output [3:0] Qbar
                            
                          

                         );
                         
                       wire D0,D1,D2,D3; // internal input wires for interconnecting flip flops
                        
                       wire [3:0] Q_inside,Qbar_inside; 
                       
                       
                       assign Q=Q_inside;
                       
                       assign Qbar=Qbar_inside;
                        
  assign D0=~(Q_inside[3]); // This will generate the ring counter behaviour
            assign D1=Q_inside[0];
            assign D2=Q_inside[1];
            assign D3=Q_inside[2];
            
         
            
            
            
            
            
                         
  D_flip_flop DFF0(.D(D0),.PRESET(pre1),.CLR(rst),.CLK(clk),.Q(Q_inside[0]),.Qbar(Qbar_inside[0]));
            
  D_flip_flop DFF1(.D(D1),.PRESET(pre_234),.CLR(rst),.CLK(clk),.Q(Q_inside[1]),.Qbar(Qbar_inside[1]));
             
  D_flip_flop DFF2(.D(D2),.PRESET(pre_234),.CLR(rst),.CLK(clk),.Q(Q_inside[2]),.Qbar(Qbar_inside[2]));
              
  D_flip_flop DFF3(.D(D3),.PRESET(pre_234),.CLR(rst),.CLK(clk),.Q(Q_inside[3]),.Qbar(Qbar_inside[3]));
               
               
                         
endmodule
