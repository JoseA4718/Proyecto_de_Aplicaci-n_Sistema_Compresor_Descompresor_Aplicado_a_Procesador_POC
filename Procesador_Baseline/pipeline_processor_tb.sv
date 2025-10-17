// Comprehensive testbench for the baseline ARM32 processor
`timescale 1ns / 1ps

module pipeline_processor_tb;

    // Testbench signals
    logic clk, rst, switchStart;
    
    // Instantiate the processor
    pipeline_processor uut (
        .clk(clk),
        .rst(rst), 
        .switchStart(switchStart)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock (10ns period)
    end
    
    // Test stimulus
    initial begin
        // Initialize 
        $display("Starting Baseline Processor Test...");
        $display("Time: %0t", $time);
        
        rst = 1;
        switchStart = 0;
        
        // Reset pulse
        #20;
        rst = 0;
        switchStart = 1;
        $display("Reset released, processor starting at time: %0t", $time);
        
        // Run for enough cycles to execute test instructions
        // Need more cycles for pipeline to flush and execute all instructions
        #2000;
        
        // Check results by examining the data memory
        $display("\n=== Final Test Results ===");
        $display("Time: %0t", $time);
        
        // Display PC to see how far we got
        $display("Final PC: %h", uut.pc_out);
        
        // Try to check some memory locations
        // Note: This is just a functional test, actual verification would need 
        // proper signals or memory dumps
        
        $display("\n=== Test Instructions Executed ===");
        $display("Expected behavior:");
        $display("1. Load R2=5, R4=3, R6=8, R8=10");
        $display("2. R2=R2+R4=8, R4=R4+R6=11, R6=R6+R8=18, R8=R8+R10");
        $display("3. Store results to memory");
        $display("4. Load back and do more arithmetic");
        
        $display("\nTest completed at time: %0t", $time);
        $display("Check waveforms for detailed execution flow");
        $finish;
    end
    
    // Monitor key signals during execution
    initial begin
        $display("\n=== Execution Monitor ===");
        $display("Time    PC   Instruction  RegWrite MemWrite");
        $display("--------------------------------------------");
    end
    
    // Monitor processor execution
    always @(posedge clk) begin
        if (!rst && switchStart) begin
            $display("%4t   %2h   %8h     %b        %b", 
                     $time, uut.pc_out, uut.instruction, 
                     uut.RegWrite_wb, uut.MemWrite_mem);
        end
    end
    
    // Create waveform dump for detailed analysis
    initial begin
        $dumpfile("processor_test.vcd");
        $dumpvars(0, pipeline_processor_tb);
        
        // Also dump specific internal signals for debugging
        $dumpvars(1, uut.pc_out);
        $dumpvars(1, uut.instruction);
        $dumpvars(1, uut.RegWrite_wb);
        $dumpvars(1, uut.MemWrite_mem);
    end

endmodule