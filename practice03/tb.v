
module tb_pr03_2;

	reg in0;
	reg in1;
	reg in2;
	reg in3;
	reg [1:0] sel;
	
	
	wire out1;
	wire out2;
	wire out3;

mux4to1_inst dut1(.out(out1), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel));
mux4tol_if   dut2(.out(out2), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel));
mux4to1_case dut3(.out(out3), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel));

	initial begin
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	#(50) {sel, in0, in1,in2, in3} = $random();
	end


endmodule
