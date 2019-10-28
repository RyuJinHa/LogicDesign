module cnt6 ( out, clk, rst_n);
  
  output[5:0] out;
  input clk;
  input rst_n;
  
  reg [5:0] out;
  
  always @ (posedge clk or negedge rst_n) begin
    
    if(rst_n == 1'b0) begin
      
      out <=6'd0;
      
    end else begin
      
      if(out>= 6'd59)begin
        
        out <= 6'd0;
        
      end else begin
        
        out <= out +1'b1;
        
      end
    end
  end
endmodule

//nonblock ? ? ?? ?? ??? block ? ? ?? ?? ??.
  
module block( q,
              d,
              clk);
              
  output q;
  input d;
  input clk;
  
  reg n1;
  reg q;
  
  always @(posedge clk) begin
    
    n1=d;
    q= n1;
    
  end
endmodule

module nonblock( q,
              d,
              clk);
              
  output q;
  input d;
  input clk;
  
   reg n1;
   reg q;
   
   always @(posedge clk) begin
    
    n1<= d;
    q<= n1;
    
  end
  
endmodule


module nco( clk_1hz, num, clk, rst_n);
  
  output clk_1hz ; // 1Hz CLK
  input [31:0] num ;
  input clk ; // 50Mhz CLK input rst_n ;
  input rst_n;
  
  reg [31:0] cnt ; 
  reg clk_1hz ; 
  
    always @(posedge clk or negedge rst_n) begin 
      if(rst_n == 1'b0) begin 
        cnt <= 32'd0 ; 
        clk_1hz <= 1'd0; 
      end else begin 
        if(cnt >= num/2-1) begin 
          cnt <= 32'd0 ; 
          clk_1hz <= ~clk_1hz; 
        end else begin cnt <= cnt + 1'b1; 
        end 
      end 
    end
endmodule

module top_cnt( out,
                num, 
                clk, 
                rst_n);
  output [5:0] out ;
  
  input [31:0] num ; 
  input clk ; 
  input rst_n ;
  
  wire clk_1hz ;
  
  nco u_nco( .clk_1hz ( clk_1hz ), 
            .num ( num ), 
            .clk ( clk ), 
            .rst_n ( rst_n ));
  cnt6 u_cnt6( .out ( out ), 
              .clk ( clk_1hz ), 
              .rst_n ( rst_n ));
endmodule
