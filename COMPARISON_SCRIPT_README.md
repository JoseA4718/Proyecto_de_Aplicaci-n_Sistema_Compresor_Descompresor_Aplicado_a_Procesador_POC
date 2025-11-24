# Full Processor Comparison System
## Automated Baseline vs Decompression Performance Analysis

This script provides a complete end-to-end automated comparison between the Baseline and Decompression processors.

## Overview

The `run_full_comparison.py` script orchestrates the entire workflow:

1. **Compression Phase**: Runs the instruction compression system on the input binary instructions
2. **Preparation Phase**: Prepares matching instruction sets for both processors
3. **Simulation Phase**: Runs both processors with their respective instruction sets
4. **Collection Phase**: Collects performance metrics from both simulations
5. **Report Generation**: Creates a comprehensive PDF report with comparative graphs

## Features

- ✅ **Automated Workflow**: Complete hands-off execution from input to report
- ✅ **Fair Comparison**: Ensures both processors run the exact same instruction logic
- ✅ **Comprehensive Metrics**: Tracks 16+ performance metrics per processor
- ✅ **Professional Reporting**: Generates publication-quality PDF with multiple graph types
- ✅ **Error Handling**: Robust error detection and reporting at each step
- ✅ **Progress Tracking**: Clear console output showing current step and status

## Requirements

### Software Dependencies
- Python 3.7+
- ModelSim (for processor simulations)
- Required Python packages:
  ```bash
  pip install matplotlib numpy
  ```

### File Structure
```
Proyecto_de_Aplicaci-n_Sistema_Compresor_Descompresor_Aplicado_a_Procesador_POC/
├── run_full_comparison.py          # Main orchestration script
├── Sistema_Compresor/               # Compression system
│   ├── Input_files/
│   │   └── binary.txt              # Input instructions (binary format)
│   └── Output_files/
│       └── final_code.txt          # Compressed output
├── Procesador_Baseline/            # Baseline processor
│   ├── instructions.txt            # Non-compressed instructions (hex)
│   └── performance_metrics.txt     # Baseline metrics output
└── Procesador_Descompresor/        # Decompression processor
    ├── final_code.txt              # Compressed instructions
    └── performance_metrics.txt     # Decompressor metrics output
```

## Usage

### Basic Usage
Simply run the script from the project root directory:

```bash
python run_full_comparison.py
```

The script will:
1. Automatically detect and use the default input file
2. Run all phases sequentially
3. Generate `comparison_report.pdf` in the project root

### Custom Input File
To use a different instruction set:

```python
from run_full_comparison import ProcessorComparison

comparison = ProcessorComparison(input_file="path/to/your/binary.txt")
comparison.run_full_comparison()
```

## Output

### Console Output
The script provides detailed progress information:
```
======================================================================
  Baseline vs Decompression Processor Comparison
======================================================================

[Step 1/5] Running Compression System
----------------------------------------------------------------------
✓ Compression completed successfully

[Step 2/5] Preparing Baseline Processor Instructions
----------------------------------------------------------------------
✓ Baseline instructions prepared

... (continued for all steps)
```

### PDF Report Structure

The generated PDF includes 6 pages:

1. **Title & Summary**: Overview and metadata
2. **Performance Comparison**: 
   - Total cycles
   - Instructions executed
   - IPC (Instructions Per Cycle)
   - Instruction throughput
3. **Pipeline Efficiency**:
   - CPI (Cycles Per Instruction)
   - Pipeline utilization
   - ALU operations
   - Pipeline bubbles (NOPs)
4. **Memory Performance**:
   - Memory accesses
   - Bandwidth utilization
   - Read/Write operations
   - Access rate
5. **Compression Benefits** (if applicable):
   - Compression ratio
   - Instruction distribution
   - Memory efficiency
   - Fetch bandwidth savings
6. **Detailed Metrics Table**: Complete numerical comparison with:
   - Absolute values for both processors
   - Difference calculations
   - Percentage changes
   - Color-coded improvements/regressions

## Metrics Tracked

### Core Performance Metrics
- `total_cycles`: Total execution cycles
- `total_instructions`: Instructions executed
- `cpi`: Cycles per instruction (lower is better)
- `ipc`: Instructions per cycle (higher is better)
- `pipeline_utilization`: Percentage of pipeline efficiency
- `instruction_throughput`: Overall throughput percentage

### Memory Metrics
- `memory_accesses`: Total memory operations
- `memory_reads`: Read operations
- `memory_writes`: Write operations
- `memory_bandwidth`: Bandwidth utilization
- `memory_access_rate`: Access frequency

### Operation Counts
- `alu_operations`: ALU operations performed
- `register_writes`: Register write operations
- `branch_operations`: Branch instructions
- `nops`: Pipeline bubbles (no-operations)
- `execution_latency`: Total execution latency

### Compression-Specific Metrics (Decompressor Only)
- `compression_ratio`: Percentage of instructions compressed
- `decompressed_instructions`: Number of instructions decompressed
- `memory_efficiency`: Memory usage efficiency vs baseline
- `instruction_fetch_savings`: Bandwidth saved by compression

## How It Works

### Phase 1: Compression
```
Input: Sistema_Compresor/Input_files/binary.txt (32-bit binary instructions)
  ↓
Process: run_system.py (compiler → bin_hex → tokens → transform)
  ↓
Output: Output_files/final_code.txt (compressed hex instructions)
        Output_files/translation_table.txt (compression mapping)
```

### Phase 2: Instruction Preparation
```
Baseline Path:
  binary.txt → Convert to hex → instructions.txt

Decompressor Path:
  final_code.txt → Copy → Procesador_Descompresor/final_code.txt
  translation_table.txt → Copy → Procesador_Descompresor/translation_table.txt
```

### Phase 3: Processor Simulations
```
Baseline:
  vsim -c -do run_test.do (in Procesador_Baseline/)
  → performance_metrics.txt

Decompressor:
  vsim -c -do run_test.do (in Procesador_Descompresor/)
  → performance_metrics.txt
```

### Phase 4: Report Generation
```
Parse metrics → Create matplotlib graphs → Generate PDF
```

## Troubleshooting

### ModelSim Not Found
If you get "vsim command not found":
```bash
# Add ModelSim to PATH (Windows example)
set PATH=%PATH%;C:\path\to\modelsim\win64
```

### Missing Python Packages
```bash
pip install matplotlib numpy
```

### Encoding Warnings
Unicode encoding warnings from ModelSim output are normal and don't affect functionality. The script automatically handles encoding issues.

### Simulation Timeout
If simulations take longer than 5 minutes, the script will timeout. This is typically due to:
- Very large instruction sets
- Infinite loops in the instruction code
- ModelSim license issues

### No Metrics File Generated
If performance_metrics.txt is not generated:
1. Check that the testbench includes performance monitoring code
2. Verify the simulation completes (check simulation_log.txt)
3. Ensure the testbench calls the metrics export function

## Customization

### Adjusting Timeouts
Edit the timeout values in the script:
```python
# Compression timeout (default: 120 seconds)
timeout=120

# Simulation timeout (default: 300 seconds)
timeout=300
```

### Changing Output Filename
```python
comparison.generate_comparison_report(output_pdf="my_report.pdf")
```

### Adding Custom Metrics
To track additional metrics:
1. Add metric export to processor testbench
2. Update `parse_metrics()` method to read new metrics
3. Add visualization in appropriate graph page

### Modifying Graph Styles
Color scheme is defined at the top of the script:
```python
COLORS = {
    'baseline': '#2E86AB',      # Blue
    'decompressor': '#A23B72',  # Purple
    'positive': '#06A77D',      # Green
    'negative': '#D64045',      # Red
    'neutral': '#6C757D'        # Gray
}
```

## Performance Tips

1. **Sequential vs Parallel**: Simulations run sequentially for stability. For faster execution, consider running in parallel if your system supports it.

2. **Clean Builds**: For most accurate results, clean previous builds:
   ```bash
   # In each processor directory
   rm -rf work/ *.wlf transcript
   ```

3. **Reduced Logging**: Disable verbose logging in testbenches for faster simulation.

## Example Results

Typical output metrics:
```
Key Results:
  Baseline CPI:      6.877
  Decompressor CPI:  4.254
  Compression Ratio: 18.03%
  
  → 38.1% CPI improvement with decompression
  → 18% instruction memory saved
  → 6.78% instruction fetch bandwidth savings
```

## Integration with CI/CD

The script can be integrated into automated testing pipelines:

```bash
# Run comparison and check exit code
python run_full_comparison.py
if [ $? -eq 0 ]; then
    echo "Comparison successful"
    # Upload PDF to artifact storage
else
    echo "Comparison failed"
    exit 1
fi
```

## Known Limitations

1. **Sequential Execution**: Processor simulations run sequentially (not in parallel)
2. **Fixed Input Format**: Expects 32-bit binary instructions in specific format
3. **ModelSim Dependency**: Requires ModelSim for simulations (not compatible with other simulators without modification)
4. **Windows Path Handling**: Optimized for Windows paths (may need adjustments for Linux/Mac)

## Future Enhancements

Potential improvements:
- [ ] Parallel processor simulation
- [ ] Support for multiple instruction sets in batch mode
- [ ] Interactive HTML report option
- [ ] Real-time progress dashboard
- [ ] Configuration file for customization
- [ ] Support for additional simulators (Vivado, VCS, etc.)
- [ ] Automated regression testing across multiple test cases

## Credits

Developed as part of the Processor Compression/Decompression Application Project, 2025.

## License

Part of the academic project: "Sistema Compresor Descompresor Aplicado a Procesador POC"
