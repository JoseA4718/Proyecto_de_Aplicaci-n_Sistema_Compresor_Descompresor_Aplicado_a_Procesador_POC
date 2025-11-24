module alu( input [31:0] A, B,
				input [2:0] sel,
				output [31:0] C,
				output flagZ);
	
	reg [31:0] alu_out_temp;
	
	always @(*)
		case (sel)
		
			// sum
			3'b000: alu_out_temp = A + B; 
			
			// sub
			3'b001: alu_out_temp = A - B;
			
			// mul
			3'b010: alu_out_temp = A * B;
			
			// div
			3'b011: alu_out_temp = A / B;
			
			// rem
			3'b100: alu_out_temp = A % B;
			
			// cmp
			3'b101: alu_out_temp = (A >= 0 && A < B) ? 1 : 0;
			
			// test
			3'b110: alu_out_temp = ((A - 1) / 37) % 2;
			
			default: alu_out_temp = A + B; 
		
		endcase 
		
	// result
	assign C = alu_out_temp;
	
	// flags
	assign flagZ = (alu_out_temp == 31'd0);	// zero
	
endmodule 