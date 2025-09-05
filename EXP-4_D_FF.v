// Code your design here
module D_FF(

  

                    D,
                    
                    PRE,
                    
                    CLR,
                    
                    CLK,
                    
                    Q,
                    
                    Qbar);


input  D;

input PRE;

input CLR;

input  CLK;

output reg Q;

output wire Qbar;


  always@(posedge CLK or posedge PRE or posedge CLR)

    begin
       
      if(PRE==1)
        
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
