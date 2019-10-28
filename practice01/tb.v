module tb;

	reg DoorClose;
	reg Ignition;
	reg SeatBelt;

	wire Alarm;

	carWarning DUT( .Alarm 		(Alarm),
			.DoorClose 	(DoorClose),
			.Ignition 	(Ignition),
			.SeatBelt 	(SeatBelt));

	initial begin
		DoorClose = 1'b1;
		Ignition = 1'b0;
		SeatBelt = 1'b0;

	end
	
	always begin
	#100
		DoorClose = 1'b0;
		Ignition = 1'b0;
		SeatBelt = 1'b0;
	#100
		DoorClose = 1'b0;
		Ignition = 1'b1;
		SeatBelt = 1'b0;
	#100
		DoorClose = 1'b1;
		Ignition = 1'b1;
		SeatBelt = 1'b0;
	#100
		DoorClose = 1'b1;
		Ignition = 1'b1;
		SeatBelt = 1'b1;
	#100
	 $finish ;
	end

endmodule
