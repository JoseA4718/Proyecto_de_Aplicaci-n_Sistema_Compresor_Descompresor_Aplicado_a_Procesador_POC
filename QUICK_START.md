# Quick Start Guide: Processor Comparison Script

## Installation

```bash
# Install required Python packages
pip install matplotlib numpy
```

## Basic Usage

```bash
# Navigate to project directory
cd "c:\TEC\II Semestre 2025\Proyecto\Proyecto Aplicacion\Proyecto_de_Aplicaci-n_Sistema_Compresor_Descompresor_Aplicado_a_Procesador_POC"

# Run the comparison
python run_full_comparison.py
```

## What It Does

1. ✅ Compresses your input instructions
2. ✅ Runs Baseline processor (non-compressed)
3. ✅ Runs Decompressor processor (compressed)
4. ✅ Collects all performance metrics
5. ✅ Generates PDF with comparison graphs

## Output

- **Console**: Real-time progress and results
- **PDF Report**: `comparison_report.pdf` (6 pages of detailed analysis)

## Expected Runtime

- **Total Time**: ~8-10 seconds
  - Compression: ~2 seconds
  - Baseline Simulation: ~2-3 seconds
  - Decompressor Simulation: ~2-3 seconds
  - PDF Generation: ~1 second

## Input File

Default: `Sistema_Compresor/Input_files/binary.txt`

Format: 32-bit binary instructions, one per line:
```
10110000001000000000000000101101
10110000010000000000000110010010
...
```

## Success Indicators

Look for these messages:
- ✓ Compression completed successfully
- ✓ Baseline instructions prepared
- ✓ Both processor simulations completed successfully
- ✓ Metrics collected successfully
- ✓ PDF report generated

## Common Issues

### ModelSim Not Found
**Error**: `'vsim' is not recognized...`
**Fix**: Add ModelSim to your PATH

### Missing Packages
**Error**: `ModuleNotFoundError: No module named 'matplotlib'`
**Fix**: `pip install matplotlib numpy`

### No Metrics Generated
**Check**: 
1. Simulations completed (look for `performance_metrics.txt` in processor folders)
2. Testbench includes performance monitoring
3. Check `simulation_log.txt` for errors

## Reading the PDF Report

### Page 1: Title & Summary
- Generation timestamp
- Overview of comparison

### Page 2: Performance Comparison
- **Total Cycles**: Lower is faster
- **Instructions Executed**: Should be similar for both
- **IPC**: Higher is better (Instructions Per Cycle)
- **Throughput**: Higher is better

### Page 3: Pipeline Efficiency
- **CPI**: Lower is better (Cycles Per Instruction)
- **Utilization**: Higher is better
- **ALU Operations**: Count of arithmetic operations
- **NOPs**: Lower is better (pipeline bubbles)

### Page 4: Memory Performance
- **Memory Accesses**: Total read/write operations
- **Bandwidth**: Memory usage efficiency
- **Read/Write Split**: Distribution of operations
- **Access Rate**: Frequency of memory usage

### Page 5: Compression Benefits (Decompressor Only)
- **Compression Ratio**: Percentage of instructions compressed
- **Instruction Distribution**: Compressed vs Regular
- **Memory Efficiency**: Memory savings
- **Fetch Savings**: Bandwidth saved

### Page 6: Detailed Metrics Table
- Complete side-by-side comparison
- **Green**: Improvements
- **Red**: Regressions
- **Difference**: Absolute change
- **% Change**: Relative improvement

## Key Metrics Explained

| Metric | Better When | Meaning |
|--------|------------|---------|
| CPI | Lower | Fewer cycles needed per instruction |
| IPC | Higher | More instructions completed per cycle |
| Pipeline Utilization | Higher | Pipeline is more efficiently used |
| Compression Ratio | Higher | More instructions are compressed |
| Memory Bandwidth | Higher | Better memory usage |
| NOPs | Lower | Fewer wasted cycles |

## Interpreting Results

### Good Compression Performance
- Lower CPI in decompressor
- Higher compression ratio (>15%)
- Similar or higher IPC
- Memory efficiency > 1.0

### Poor Compression Performance
- Higher CPI in decompressor
- Low compression ratio (<5%)
- More NOPs in decompressor
- Memory efficiency < 1.0

## Next Steps After Running

1. **Review PDF**: Open `comparison_report.pdf`
2. **Check Metrics**: Look at the table on page 6
3. **Analyze Trends**: See which processor performs better
4. **Iterate**: Modify instructions and re-run for different workloads

## Advanced Usage

### Using Different Input Files

```python
from run_full_comparison import ProcessorComparison

comparison = ProcessorComparison(
    input_file="Sistema_Compresor/Input_files/my_test.txt"
)
comparison.run_full_comparison()
```

### Custom Output Filename

```python
comparison = ProcessorComparison()
comparison.run_full_comparison()
comparison.generate_comparison_report(output_pdf="my_analysis.pdf")
```

## File Locations After Run

```
Project Root/
├── comparison_report.pdf                    ← Your report!
├── Sistema_Compresor/
│   └── Output_files/
│       ├── final_code.txt                   ← Compressed instructions
│       └── translation_table.txt            ← Compression mapping
├── Procesador_Baseline/
│   ├── instructions.txt                     ← Non-compressed instructions
│   ├── performance_metrics.txt              ← Baseline results
│   └── simulation_log.txt                   ← Simulation details
└── Procesador_Descompresor/
    ├── final_code.txt                       ← Compressed instructions (copy)
    ├── translation_table.txt                ← Mapping (copy)
    ├── performance_metrics.txt              ← Decompressor results
    └── simulation_log.txt                   ← Simulation details
```

## Tips for Best Results

1. **Clean Previous Runs**: Delete old `work/` directories for clean simulations
2. **Verify Input**: Ensure `binary.txt` contains valid 32-bit instructions
3. **Check Logs**: If metrics look wrong, check `simulation_log.txt` files
4. **Multiple Tests**: Run with different instruction sets to see various scenarios
5. **Save Reports**: Rename PDFs to preserve results from different runs

## One-Line Comparison

```bash
python run_full_comparison.py && start comparison_report.pdf
```

This runs the full comparison and automatically opens the PDF report when done!

---

**Need Help?** Check the full documentation in `COMPARISON_SCRIPT_README.md`
