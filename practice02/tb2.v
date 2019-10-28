
module tb2;

	reg [3:0] a;
	reg [3:0] b;
	reg ci;

	wire [3:0] s1;
	wire co1;
	wire [3:0] s2;
	wire co2;

	fa4_inst dut_1( .s(s1), .co(co1), .a(a), .b(b), .ci(ci));
	fa4_mbit dut_2( .s(s2), .co(co2), .a(a), .b(b), .ci(ci));

	initial begin
		$display("Using Instances : s1, co1");
		$display("Using Multi-bit : s2, co2");
		
		$display("======================================================================================");
		$display(" ci  a  b  s1  co1  s2  co2  s3  co3  ");
		$display("======================================================================================");
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
		#(50) {ci, a, b} = $random();   #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);

		#(50) $finish;
	end
endmodule
