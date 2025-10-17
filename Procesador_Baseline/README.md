# Baseline ARM32 Processor - Project Documentation

## Overview
This is a simplified baseline ARM32 processor designed for instruction execution verification. It has been adapted from an image processing processor to serve as a proof-of-concept (POC) for basic instruction processing.

## Architecture
- **Pipeline**: 5-stage pipeline (IF, ID, EX, MEM, WB)
- **Instruction Memory**: 400 words (32-bit each)
- **Data Memory**: 1024 words (32-bit each)  
- **Register File**: 16 registers (R0-R15)
- **ALU Operations**: ADD, SUB, MUL, DIV, MOD, CMP, TEST

## Key Modules

### Core Processor
- `pipeline_processor.sv` - Main processor with 5-stage pipeline
- `control_unit.sv` - Instruction decoder and control signal generator
- `alu.sv` - Arithmetic Logic Unit
- `register_file.sv` - 16-register file with read/write ports

### Memory System  
- `memory_controller.sv` - Simplified memory controller
- `dmem_ram.sv` - 1024-word data RAM
- `imem.sv` - Instruction memory interface
- `m_descompresor.sv` - Instruction memory implementation

### Pipeline Registers
- `segment_if_id.sv` - IF/ID pipeline register
- `segment_id_ex.sv` - ID/EX pipeline register  
- `segment_ex_mem.sv` - EX/MEM pipeline register
- `segment_mem_wb.sv` - MEM/WB pipeline register

### Support Modules
- `pc_register.sv` - Program Counter
- `adder.sv` - 32-bit adder
- `mux_2to1.sv`, `mux_4to1.sv` - Multiplexers
- `sign_extend.sv` - Sign extension unit
- `jump_unit.sv` - Branch/jump logic

## Instruction Format
Instructions are 32-bit words with the following types:

### Immediate Instructions (Type: 10, func[4] = 1)
- `B0200005` - SUMI R2, R0, #5 (Load immediate 5 into R2)
- `B0400003` - SUMI R4, R0, #3 (Load immediate 3 into R4)

### Register Instructions (Type: 10, func[4] = 0)  
- `80200400` - SUM R2, R2, R4 (R2 = R2 + R4)
- `80400600` - SUM R4, R4, R6 (R4 = R4 + R6)

### Memory Instructions
- `62200000` - STR R2, [0] (Store R2 to memory address 0)
- `42A00000` - LDR R10, [0] (Load from memory address 0 to R10)

### NOP Instruction
- `80000000` - NOP (No operation)

## Test Program
The baseline test program (`instructions.txt`) performs:

1. **Initialize registers with immediate values**
   - R2 = 5, R4 = 3, R6 = 8, R8 = 10

2. **Arithmetic operations**
   - R2 = R2 + R4 = 8
   - R4 = R4 + R6 = 11  
   - R6 = R6 + R8 = 18

3. **Memory operations**
   - Store results to memory[0], memory[1], memory[2]
   - Load back and perform additional arithmetic
   - Store final results

## Files Structure
```
├── pipeline_processor.sv           # Main processor
├── control_unit.sv                 # Control unit
├── alu.sv                         # ALU
├── register_file.sv               # Register file
├── memory_controller.sv           # Memory controller (simplified)
├── dmem_ram.sv                    # Data RAM (created)
├── dmem_rom.sv                    # ROM module (created) 
├── dmem_seno.sv                   # Sine LUT (created)
├── m_descompresor.sv              # Instruction memory (created)
├── imem.sv                        # Instruction memory interface
├── memory_access.sv               # Memory access wrapper
├── instructions.txt               # Test program
├── instructions_baseline.txt      # Alternative test program
├── instructions_test.txt          # Another test variant
├── pipeline_processor_tb.sv       # Basic testbench
├── enhanced_processor_tb.sv       # Enhanced testbench
├── run_test.do                    # ModelSim script
└── README.md                      # This file
```

## Running the Tests

### Using ModelSim/QuestaSim
```bash
cd ARM32
vsim -do run_test.do
```

### Using other simulators
```bash
# Compile all SystemVerilog files
vlog -sv *.sv

# Run testbench
vsim work.pipeline_processor_tb
# or
vsim work.enhanced_processor_tb
```

## Verification Strategy

### Expected Results
After running the test program:
- Memory[0] should contain 0x00000008 (result of 5+3)
- Memory[1] should contain 0x0000000B (result of 3+8) 
- Memory[2] should contain 0x00000012 (result of 8+10)

### Debugging
1. **Check PC progression** - Should increment from 0 to ~20
2. **Monitor RegWrite_wb** - Should be high during register writes
3. **Monitor MemWrite_mem** - Should be high during memory stores
4. **Check instruction fetch** - Instructions should match instructions.txt

### Waveform Analysis
Key signals to observe:
- `clk`, `rst`, `switchStart` - Basic control
- `pc_out` - Program counter progression
- `instruction` - Current instruction being fetched
- `RegWrite_wb`, `MemWrite_mem` - Write enable signals
- `alu_res_wb` - ALU results flowing through pipeline

## Known Limitations
1. **Memory access verification** - Internal memory not easily accessible in testbench
2. **Control unit latches** - Uses `always_latch` which may cause warnings
3. **Simplified memory model** - Basic 1024-word data memory
4. **Limited instruction set** - Only basic arithmetic and memory operations

## Future Improvements
1. Add debug ports for memory content access
2. Implement more instruction types (branches, jumps)
3. Add forwarding logic for data hazards
4. Create more comprehensive test suites
5. Add performance counters and metrics

## Troubleshooting
- If compilation fails, ensure all .sv files are in the same directory
- If instructions.txt is not found, check file path in m_descompresor.sv
- For timing issues, increase simulation time in testbenches
- Use waveform viewer to debug pipeline stage progression