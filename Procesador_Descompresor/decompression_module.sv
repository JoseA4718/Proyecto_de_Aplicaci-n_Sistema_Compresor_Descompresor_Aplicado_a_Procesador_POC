module decompression_module(input logic [31:0] pc,
                output logic [31:0] instruction);
	 //Initialize buffers
    logic [31:0] final_code[0:400];
	 logic [31:0] translator_table [0:9];  // Changed from 35:0 to 31:0
	 logic [31:0] buffer;
	 logic [3:0] counter_tmp;
	 logic [31:0] instruction_tmp, less_pc;
	 
	 //Read documents 
	 initial begin
    $readmemh("final_code.txt", final_code);
	 $readmemh("translation_table.txt", translator_table);
	 end
	 
    // Writes to memory 	
    always_comb begin
		  // Default values
		  instruction_tmp = 32'h80000000; // NOP default
		  
		  // Simple range check
		  if (pc < 'd400) begin
				//Here identify the token because has less value
				if (final_code[pc] < 32'h00000010) begin
					//search tokens in the translation table
					case (final_code[pc])
						32'h0: instruction_tmp = translator_table[0];
						32'h1: instruction_tmp = translator_table[1];
						32'h2: instruction_tmp = translator_table[2];
						32'h3: instruction_tmp = translator_table[3];
						32'h4: instruction_tmp = translator_table[4];
						default: instruction_tmp = 32'h80000000; // NOP for unknown tokens
					endcase
				end
				else begin
					//Take out the normal instruction
					instruction_tmp = final_code[pc];
				end 
		  end
    end
	 
    assign instruction = instruction_tmp;

endmodule