
module dec3to8_shift(out, in, en);
  
  
  output [7:0] out;
  input  [2:0] in ;
  input        en ;
  
  assign out = ( en==1'b1) ? 8'd1<<in : 8'd0 ;
  
endmodule

module dec3to8_if(out, in, en);

  output [7:0] out;
  input  [2:0] in ;
  input        en ;
  reg [7:0] out ;
  always @(*) begin
    
    if ( en == 1'b1) begin
      
      case(in)
        
        3'b000: out = 8'b0000_0001;
        3'b001: out = 8'b0000_0010;
        3'b010: out = 8'b0000_0100;
        3'b011: out = 8'b0000_1000;
        3'b100: out = 8'b0001_0000;
        3'b101: out = 8'b0010_0000;
        3'b110: out = 8'b0100_0000;
        3'b111: out = 8'b1000_0000;
      endcase
   end else begin
      out = 8'd0;
    end
  end
endmodule

module d_latch(q,d, clk, rst_n);
  
  output q ;
  input d ;
  input clk ;
  input rst_n;
  
  reg q ;
  
  always@(d or clk or rst_n) begin
    
    if(rst_n==1'b0) begin
      q <= 1'b0 ;
      
    end else begin 
    
      if(clk==1'b1) begin
      q <= d ;
      
      end
    end
  
    
  end

endmodule

module dff_asyn(q, d, clk , rst_n);
  output q;
  input d;
  input clk;
  input rst_n; 
  
  reg q ;
  
  always @ (posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
      q<=1'b0 ;
    end else begin 
      q<=d;
    end
    
  end
  
  
endmodule


module dff_syn(q ,d ,clk ,rst_n);
  
  output q;
  input d;
  input clk;
  input rst_n; 
  
  reg q ;
  
  always@(posedge clk) begin
    if(rst_n==1'b0) begin
      q<=1'b0;
    end else begin
      q<=d;
    end
    
  end
  
endmodule
