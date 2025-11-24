module memory_controller (input logic clk, we, switchStart,
					 input logic [31:0] pc, address, wd,
					 output logic [31:0] rd, instruction
);
						 
	logic [31:0] mapAddressRAM, mapAddressInstructions, ramData, instructionData;
						 
	// Simple data RAM - only one memory needed for baseline
	dmem_ram ram (switchStart, clk, we, mapAddressRAM, wd, ramData);
	
	// Instruction memory
	imem imem_rom (.pc(mapAddressInstructions),.instruction(instructionData));

	always_comb begin
		// Default values
		mapAddressRAM = 32'b0;
		mapAddressInstructions = 32'b0;
		rd = 32'b0;
		instruction = 32'h80000000; // Default NOP
		
		// Read instructions from instruction memory
		if (pc >= 'd0 && pc < 'd400) begin
			mapAddressInstructions = pc;
			instruction = instructionData;
		end
		
		// Data memory access - simplified memory map
		// Address range 0-1023 for data memory
		if (address >= 'd0 && address < 'd1024) begin
			mapAddressRAM = address;
			rd = ramData;
		end
		// For addresses outside range, return 0
		else begin
			rd = 32'b0;
		end
	end
						 
endmodule 