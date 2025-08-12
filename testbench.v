4: Chương trình testbench
module tb_demux1_8;

	// Inputs
	reg i;
	reg s0;
	reg s1;
	reg s2;

	// Outputs
	wire [7:0] d;

	// Instantiate the Unit Under Test (UUT)
	DEMUX1_8 uut (
		.i(i), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		s0 = 0;
		s1 = 0;
		s2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      i = 1;
		#100;
		s0 = 0; s1 = 0; s2 = 0;
		#100;
		s0 = 1; s1 = 0; s2 = 0;
		#100;
		s0 = 0; s1 = 1; s2 = 0;
		#100;
		s0 = 1; s1 = 1; s2 = 0;
		#100;
		s0 = 0; s1 = 0; s2 = 1;
		#100;
		s0 = 1; s1 = 0; s2 = 1;
		#100;
		s0 = 0; s1 = 1; s2 = 1;
		#100;
		s0 = 1; s1 = 1; s2 = 1;
		#100;
		// Add stimulus here

	end
