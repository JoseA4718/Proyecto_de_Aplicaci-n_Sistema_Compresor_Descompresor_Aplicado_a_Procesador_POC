module memory_access (input logic clk, memWriteM, switchStart,
							  input logic [31:0] pc, address, wd,
							  output logic [31:0] rd, instruction);

	

	memory_controller memoryControllerUnit (clk, memWriteM, switchStart, 
														pc, address, wd,
														rd, instruction);

endmodule 