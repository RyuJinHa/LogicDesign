module tb_sequential;
  
  wire q_latch;
  wire q_dff_asyn;
  wire q_dff_syn;
  
  reg d;
  reg clk;
  reg rst_n;
  
  initial clk=1'b0;
  always #(100) clk=~clk;
  
  d_latch dut0(.q(q_latch), .d(d), .clk(clk), .rst_n(rst_n));
  dff_asyn dut1 (.q(q_dff_asyn), .d(d), .clk(clk), .rst_n(rst_n));
  dff_syn dut2 (.q(q_dff_syn), .d(d), .clk(clk), .rst_n(rst_n));
  
  initial begin
    
    #(0) {rst_n, d}=2'b00;
    #(50) {rst_n, d}=2'b00; 
    #(50) {rst_n, d}=2'b10;  
    #(50) {rst_n, d}=2'b10;  
    #(50) {rst_n, d}=2'b11;  
    #(50) {rst_n, d}=2'b11;  
    #(50) {rst_n, d}=2'b10;  
    #(50) {rst_n, d}=2'b11;  
  
  end
  
endmodule

module tb_1;
  
  wire [7:0] out1;
  wire [7:0] out2;
  
  reg [2:0] in ;
  reg      en ;
  
  dec3to8_shift dut0( .out(out1), .in(in), .en(en));
  dec3to8_if dut1( .out(out2), .in(in), .en(en));
  
  initial begin
    
    #(50) {en, in[2], in[1], in[0]}=4'b0000;
    #(50) {en, in[2], in[1], in[0]}=4'b0001; 
    #(50) {en, in[2], in[1], in[0]}=4'b0010;
    #(50) {en, in[2], in[1], in[0]}=4'b0011; 
    #(50) {en, in[2], in[1], in[0]}=4'b0100; 
    #(50) {en, in[2], in[1], in[0]}=4'b0101; 
    #(50) {en, in[2], in[1], in[0]}=4'b0110; 
    #(50) {en, in[2], in[1], in[0]}=4'b0111; 
    #(50) {en, in[2], in[1], in[0]}=4'b1000;
    #(50) {en, in[2], in[1], in[0]}=4'b1001;
    #(50) {en, in[2], in[1], in[0]}=4'b1010;
    #(50) {en, in[2], in[1], in[0]}=4'b1011;
    #(50) {en, in[2], in[1], in[0]}=4'b1100;
    #(50) {en, in[2], in[1], in[0]}=4'b1101;
    #(50) {en, in[2], in[1], in[0]}=4'b1110; 
    #(50) {en, in[2], in[1], in[0]}=4'b1111; 
    
  end
  
endmodule
