`timescale 1ns/1ns

module tb_cnt;
  
  parameter tck = 1000/50 ;
  
  reg clk;
  reg rst_n;
  wire[5:0] out;
  
  initial clk=1'b0;
  always #(tck/2) clk=~clk;
  
  cnt6 dut( .out(out), 
            .clk(clk), 
            .rst_n(rst_n));
            
  initial begin
    
    #(0*tck) rst_n=1'b0;
    #(1*tck) rst_n=1'b1;
    #(100*tck) $finish;
  end
  
endmodule

module tb_bnb;
  
  wire q1;
  wire q2;
  reg d;
  reg clk;
  
  initial clk=1'b0;
  
  always #(100) clk=~clk;
  
  block dut0( .q(q1),
              .d(d),
              .clk(clk));
  nonblock dut1 ( .q(q2),
                  .d(d),
                  .clk(clk));
              
  initial begin
    

  #(50) {d}=$random();
  #(50) {d}=$random();
  #(50) {d}=$random();
  #(50) {d}=$random();
  #(50) {d}=$random();
  #(50) {d}=$random();
  #(50) {d}=$random();
  #(50) {d}=$random(); 
  #(50) {d}=$random();
  #(50) $finish;
  
  
  
  end

endmodule
  
  
  
module tb_top_cnt;
  parameter tCK = 1000/50 ; // 50MHz Clock
  reg clk ;
  reg rst_n ;
  
  wire [5:0] out ;
  
  initial clk = 1'b0;
  always #(tCK/2) clk = ~clk;
  top_cnt dut( .out ( out ), 
              .num ( 32'd50000000 ), 
              .clk ( clk ), 
              .rst_n ( rst_n )); 
  initial begin #(0*tCK) rst_n = 1'b0; 
                #(1*tCK) rst_n = 1'b1; 
                #(100000000*tCK) $finish; end
endmodule
