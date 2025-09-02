// type:  
`timescale 1ns/10ps
`celldefine
module gf180mcu_sah_sc_aoi222_1 (Y, A0, A1, B0, B1, C0, C1);
	output Y;
	input A0, A1, B0, B1, C0, C1;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, A0, A1);
	and (int_fwire_1, B0, B1);
	and (int_fwire_2, C0, C1);
	nor (Y, int_fwire_0, int_fwire_1, int_fwire_2);

	// Timing
	specify
		if (~(B0 & B1) & ~(C0 & C1)) (A0 => Y) = 0;
		if (~(B0 & B1) & ~(C0 & C1)) (A1 => Y) = 0;

		if (~(A0 & A1) & ~(C0 & C1)) (B0 => Y) = 0;
		if (~(A0 & A1) & ~(C0 & C1)) (B1 => Y) = 0;

		if (~(A0 & A1) & ~(B0 & B1)) (C0 => Y) = 0;
		if (~(A0 & A1) & ~(B0 & B1)) (C1 => Y) = 0;

		// Default fallbacks
		ifnone (A0 => Y) = 0;
		ifnone (A1 => Y) = 0;
		ifnone (B0 => Y) = 0;
		ifnone (B1 => Y) = 0;
		ifnone (C0 => Y) = 0;
		ifnone (C1 => Y) = 0;
	endspecify
endmodule
`endcelldefine
