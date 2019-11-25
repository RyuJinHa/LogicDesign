//	==================================================
//	Copyright (c) 2019 Sookmyung Women's University.
//	--------------------------------------------------
//	FILE 			: practice09.v
//	DEPARTMENT		: EE
//	AUTHOR			: WOONG CHOI
//	EMAIL			: woongchoi@sookmyung.ac.kr
//	--------------------------------------------------
//	RELEASE HISTORY
//	--------------------------------------------------
//	VERSION			DATE
//	0.0			2019-10-28
//	--------------------------------------------------
//	PURPOSE			: Seven-Segment Display
//	==================================================
`timescale		1ns/1ns
module	tb;


parameter	tCK	= 1000/50	;	// 50MHz Clock

reg		clk			;
reg		rst_n			;
reg		i_ir_rxb		;

initial		clk = 1'b0	;
always	#(tCK/2)
		clk = ~clk	;

wire	[5:0]	o_seg_enb	;
wire		o_seg_dp	;
wire	[6:0]	o_seg		;
top		dut(
		.o_seg_enb	(o_seg_enb	),
		.o_seg_dp	(o_seg_dp	),
		.o_seg		(o_seg		),
		.i_ir_rxb	(i_ir_rxb	),
		.clk		(clk		),
		.rst_n		(rst_n		));

initial begin
	#(0*tCK)	rst_n	= 1'b0;	i_ir_rxb = 1'b0;
	#(1000*tCK)	rst_n	= 1'b1;	i_ir_rxb = 1'b0;
			L_CODE;
			D_CODE0;
			D_CODE1;
			D_CODE0;
			D_CODE1;
			D_CODE0;
			D_CODE0;
			D_CODE1;
			D_CODE1;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE1;
			D_CODE1;
			D_CODE1;
			D_CODE1;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE0;
			D_CODE1;
	#(1000*tCK)	$finish;
end

task	L_CODE;
	begin
				i_ir_rxb	= 1'b0;
		#(9000000)	i_ir_rxb	= 1'b1;
		#(4500000)	;
	end
endtask

task	D_CODE0;
	begin
				i_ir_rxb	= 1'b0;
		#(560000)	i_ir_rxb	= 1'b1;
		#(565000)	;
	end
endtask

task	D_CODE1;
	begin
				i_ir_rxb	= 1'b0;
		#(560000)	i_ir_rxb	= 1'b1;
		#(1690000)	;
	end
endtask

endmodule
