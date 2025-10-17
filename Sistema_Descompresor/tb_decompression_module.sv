module tb_decompression_module;

    // Testbench parameters
    localparam CLK_PERIOD = 10; 
    logic clk; 
    logic [31:0] pc; // program counter
    logic [31:0] instruction; 

    // Instantiate dut
    decompression_module dut (
        .pc(pc),
        .instruction(instruction)
    );

    // Generate clock
    always #((CLK_PERIOD / 2)) clk = ~clk;

    // Generate stimuli
    initial begin
        clk = 0; // Start clock as low
        pc = 32'h00000000; // Initial address
        #20;
        pc = 32'h00000001; // Adress change
        #20;
		  pc = 32'h00000002; // Adress change
        #20;
		  pc = 32'h00000003; // Adress change
        #20;
		  pc = 32'h00000004; // Adress change
        #20;
		  pc = 32'h00000005; // Adress change
        #20;
		  pc = 32'h00000006; // Adress change
        #20;
		  pc = 32'h00000007; // Adress change
        #20;
		  pc = 32'h00000008; // Adress change
        #20;
		  pc = 32'h00000009; // Adress change
        #20;
		  pc = 32'h000000010; // Adress change
        #20;
		  pc = 32'h000000011; // Adress change
        #20;
		  pc = 32'h000000012; // Adress change
        #20;
		  pc = 32'h000000013; // Adress change
        #20;
		  pc = 32'h000000014; // Adress change
        #20;
		  pc = 32'h000000015; // Adress change
        #20;
		  pc = 32'h000000016; // Adress change
        #20;
		  pc = 32'h000000017; // Adress change
        #20;
		  pc = 32'h000000018; // Adress change
        #20;
		  pc = 32'h000000019; // Adress change
        #20;
		  pc = 32'h000000020; // Adress change
        #20;
		  pc = 32'h000000021; // Adress change
        #20;
        // Add more test cases if necessary
        $stop; // Stop simulation
    end

    // Monitor out signals
    always @(posedge clk) begin
        $display("Current instruction on PC = %h: %h", pc, instruction);
    end

endmodule