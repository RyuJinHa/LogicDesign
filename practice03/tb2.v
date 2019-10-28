module tb_pr03_22;

	reg in0;
	reg in1;
	reg sel;

	wire out1;
	wire out2;
	wire out3;
mux2to1_cond( .out(out1), .in0(in0), .in1(in1), .sel(sel));
mux2to1_if (.out(out2), .in0(in0), .in1(in1), .sel(sel));
mux2to1_case (.out(out3), .in0(in0), .in1(in1), .sel(sel));

	initial begin
	#(50) {sel, in0, in1} = 3'b000	;
	#(50) {sel, in0, in1} = 3'b001	;
	#(50) {sel, in0, in1} = 3'b010	;
	#(50) {sel, in0, in1} = 3'b011	;
	#(50) {sel, in0, in1} = 3'b100	;
	#(50) {sel, in0, in1} = 3'b101	;
	#(50) {sel, in0, in1} = 3'b110	;
	#(50) {sel, in0, in1} = 3'b111	;
	end

endmodule

