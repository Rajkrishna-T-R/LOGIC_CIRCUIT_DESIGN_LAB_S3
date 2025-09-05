// Code your design here
module T_FF(

  

                    T,
                     
                    CLR,
                    
                    CLK,
                    
                    Q,
                    
                    Qbar);


input  T;

input CLR;

input  CLK;

output reg Q;

output wire Qbar;


  always@(posedge CLK or posedge CLR)

    begin
    
         
      if(CLR==1)
        
            begin
            
                Q<=0;  
              
            end
         
      else if(T==1)
          
            begin 
            
                Q<=~Q;
                
            end
       
         
      else 
          
            begin 
            
                Q<=Q;
                
            end
    end
    
    assign Qbar=~Q;
    
endmodule
