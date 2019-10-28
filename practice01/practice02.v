module fa_dataflow( s, co, a, b, ci);

	output co;
	output s;

	input a;
	input b;
	input ci;

	assign s= (~a&~b&ci)|(~a&b&~ci)|(a&b&ci)|(a&~b&~ci);
	assign co= (a&b)|(b&ci)|(a&ci)|;
endmodule

module fa_behavior( s, co, a, b, ci );

	output co;
	output s;

	input a;
	input b;
	input ci;

	reg s;
	reg co;

	always@(ci, a, b ) begin
		s= (~a&~b&ci)|(~a&b&~ci)|(a&b&ci)|(a&~b&~ci);
		co= (a&b)|(b&ci)|(a&ci)|;
	end
endmodule


module fa_case( s, co, a, b, ci );


	output co;
	output s;

	input a;
	input b;
	input ci;
		
	reg s;
	reg co;

	always@(ci, a, b) begin
		case( {ci, a, b} )
			3'b000 : {co, s}= 2'b00 ;
			3'b001 : {co, s]= 2'b01 ;
			3'b010 : {co, s}= 2'b01 ;
			3'b011 : {co, s]= 2'b10 ;
			3'b100 : {co, s}= 2'b01 ;
			3'b101 : {co, s]= 2'b10 ;
			3'b110 : {co, s}= 2'b10 ;
			3'b111 : {co, s]= 2'b11 ;
		endcase

	end
endmodule


