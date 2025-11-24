#!/usr/bin/env python3
"""
Full Baseline vs Decompression Processor Comparison Script
=============================================================
This script orchestrates the complete comparison workflow:
1. Compresses input instructions using the compression system
2. Runs baseline processor with non-compressed instructions
3. Runs decompression processor with compressed instructions
4. Collects performance metrics from both runs
5. Generates PDF report with comparative graphs

Author: Automated Comparison System
Date: November 2025
"""

import subprocess
import sys
import os
import time
import shutil
from pathlib import Path
import matplotlib.pyplot as plt
import matplotlib
matplotlib.use('Agg')  # Non-interactive backend
from matplotlib.backends.backend_pdf import PdfPages
import numpy as np

# Color scheme for professional graphs
COLORS = {
    'baseline': '#2E86AB',      # Blue
    'decompressor': '#A23B72',  # Purple
    'positive': '#06A77D',      # Green
    'negative': '#D64045',      # Red
    'neutral': '#6C757D'        # Gray
}

class ProcessorComparison:
    """Maneja todo el proceso de comparación entre los dos procesadores."""
    
    def __init__(self, input_file="Sistema_Compresor/Input_files/binary.txt"):
        self.input_file = input_file
        self.root_dir = Path(__file__).parent.absolute()
        self.compressor_dir = self.root_dir / "Sistema_Compresor"
        self.baseline_dir = self.root_dir / "Procesador_Baseline"
        self.decompressor_dir = self.root_dir / "Procesador_Descompresor"
        
        # Create logs directory if it doesn't exist
        self.logs_dir = self.root_dir / "Logs"
        self.logs_dir.mkdir(exist_ok=True)
        
        # Generate timestamp for this run
        self.timestamp = time.strftime('%Y%m%d_%H%M%S')
        
        # Output files
        self.compressed_output = self.compressor_dir / "Output_files" / "final_code.txt"
        self.translation_table = self.compressor_dir / "Output_files" / "translation_table.txt"
        self.baseline_metrics = self.baseline_dir / "performance_metrics.txt"
        self.decompressor_metrics = self.decompressor_dir / "performance_metrics.txt"
        
        self.results = {
            'baseline': {},
            'decompressor': {}
        }
        
    def print_header(self, text):
        """Print formatted section header"""
        print(f"\n{'='*70}")
        print(f"  {text}")
        print(f"{'='*70}\n")
        
    def print_step(self, step_num, total_steps, text):
        """Print formatted step indicator"""
        print(f"\n[Step {step_num}/{total_steps}] {text}")
        print("-" * 70)
        
    def run_compression(self):
        """Step 1: Run compression system"""
        self.print_step(1, 5, "Running Compression System")
        
        os.chdir(self.compressor_dir)
        
        print(f"Input file: {self.input_file}")
        print(f"Working directory: {os.getcwd()}")
        
        try:
            # Set environment to handle UTF-8 encoding
            env = os.environ.copy()
            env['PYTHONIOENCODING'] = 'utf-8'
            
            # Run the compression pipeline
            result = subprocess.run(
                [sys.executable, "run_system.py"],
                capture_output=True,
                text=True,
                timeout=120,
                env=env
            )
            
            if result.returncode == 0:
                print("✓ Compression completed successfully")
                print(f"✓ Compressed output: {self.compressed_output}")
                
                # Verify output exists
                if not self.compressed_output.exists():
                    raise FileNotFoundError(f"Compressed output not found: {self.compressed_output}")
                    
                return True
            else:
                print(f"✗ Compression failed with code {result.returncode}")
                print(f"STDOUT:\n{result.stdout}")
                print(f"STDERR:\n{result.stderr}")
                return False
                
        except Exception as e:
            print(f"✗ Error during compression: {e}")
            return False
        finally:
            os.chdir(self.root_dir)
            
    def prepare_baseline_instructions(self):
        """Preparar instrucciones no comprimidas para el procesador baseline"""
        self.print_step(2, 5, "Preparing Baseline Processor Instructions")
        
        # Convert binary to hex for baseline processor
        input_binary = self.compressor_dir / "Input_files" / "binary.txt"
        output_hex = self.baseline_dir / "instructions.txt"
        
        try:
            with open(input_binary, 'r') as f_in:
                binary_lines = f_in.readlines()
            
            with open(output_hex, 'w') as f_out:
                for line in binary_lines:
                    line = line.strip()
                    if line and not line.startswith('//'):
                        # Convert binary to hex
                        hex_value = hex(int(line, 2))[2:].zfill(8)
                        f_out.write(hex_value + '\n')
            
            print(f"✓ Baseline instructions prepared: {output_hex}")
            print(f"  Total instructions: {len(binary_lines)}")
            return True
            
        except Exception as e:
            print(f"✗ Error preparing baseline instructions: {e}")
            return False
            
    def prepare_decompressor_instructions(self):
        """Copiar instrucciones comprimidas al directorio del descompresor"""
        self.print_step(3, 5, "Preparing Decompressor Instructions")
        
        try:
            # Copy compressed instructions
            dest_compressed = self.decompressor_dir / "final_code.txt"
            shutil.copy(self.compressed_output, dest_compressed)
            print(f"✓ Compressed instructions copied to: {dest_compressed}")
            
            # Copy translation table
            dest_table = self.decompressor_dir / "translation_table.txt"
            shutil.copy(self.translation_table, dest_table)
            print(f"✓ Translation table copied to: {dest_table}")
            
            return True
            
        except Exception as e:
            print(f"✗ Error preparing decompressor instructions: {e}")
            return False
            
    def run_processor(self, processor_name, working_dir):
        """Correr la simulación del procesador"""
        
        print(f"\nRunning {processor_name} processor...")
        print(f"Working directory: {working_dir}")
        
        os.chdir(working_dir)
        
        try:
            # Ejecutar la simulación de ModelSim con manejo adecuado de codificación
            result = subprocess.run(
                ["vsim", "-c", "-do", "run_test.do"],
                capture_output=True,
                text=True,
                timeout=300,
                encoding='utf-8',
                errors='ignore' 
            )
            
            # Revisar si se generó el archivo de métricas
            metrics_file = working_dir / "performance_metrics.txt"
            if metrics_file.exists():
                print(f"✓ {processor_name} simulation completed successfully")
                print(f"✓ Metrics file generated: {metrics_file}")
                return True
            else:
                print(f"⚠ {processor_name} simulation ran but no metrics file found")
                print(f"STDOUT:\n{result.stdout[-1000:]}")  # Últimos 1000 caracteres
                return False
                
        except subprocess.TimeoutExpired:
            print(f"✗ {processor_name} simulation timed out (5 minutes)")
            return False
        except Exception as e:
            print(f"✗ Error running {processor_name}: {e}")
            return False
        finally:
            os.chdir(self.root_dir)
            
    def run_both_processors(self):
        """Paso 4: Ejecutar ambas simulaciones de procesadores en paralelo"""
        self.print_step(4, 5, "Running Processor Simulations")
        
        print("Running simulations sequentially for stability...")
        
        # Run baseline
        print("\n--- Baseline Processor ---")
        baseline_ok = self.run_processor("Baseline", self.baseline_dir)
        
        # Run decompressor
        print("\n--- Decompressor Processor ---")
        decompressor_ok = self.run_processor("Decompressor", self.decompressor_dir)
        
        if baseline_ok and decompressor_ok:
            print("\n✓ Both processor simulations completed successfully")
            return True
        else:
            print("\n✗ One or more simulations failed")
            return False
            
    def parse_metrics(self, metrics_file):
        """Parsear el archivo de métricas de rendimiento"""
        metrics = {}
        
        try:
            with open(metrics_file, 'r') as f:
                for line in f:
                    line = line.strip()
                    if '=' in line and not line.startswith('#'):
                        key, value = line.split('=')
                        key = key.strip()
                        value = value.strip()
                        try:
                            metrics[key] = float(value)
                        except ValueError:
                            metrics[key] = value
            
            return metrics
            
        except Exception as e:
            print(f"Error parsing metrics from {metrics_file}: {e}")
            return {}
            
    def collect_metrics(self):
        """Paso 5: Recopilar métricas de ambas ejecuciones"""
        self.print_step(5, 5, "Collecting Performance Metrics")
        
        # Parse baseline metrics
        print(f"Reading baseline metrics from: {self.baseline_metrics}")
        self.results['baseline'] = self.parse_metrics(self.baseline_metrics)
        
        # Parse decompressor metrics
        print(f"Reading decompressor metrics from: {self.decompressor_metrics}")
        self.results['decompressor'] = self.parse_metrics(self.decompressor_metrics)
        
        if self.results['baseline'] and self.results['decompressor']:
            print(f"✓ Metrics collected successfully")
            print(f"  Baseline metrics: {len(self.results['baseline'])} values")
            print(f"  Decompressor metrics: {len(self.results['decompressor'])} values")
            return True
        else:
            print("✗ Failed to collect metrics")
            return False
            
    def generate_comparison_report(self, output_pdf="comparison_report.pdf"):
        """Generar informe PDF de comparación"""
        self.print_header("Generating Comparison Report")
        
        baseline = self.results['baseline']
        decompressor = self.results['decompressor']
        
        # Create PDF with timestamp in logs directory
        pdf_filename = f"comparison_report_{self.timestamp}.pdf"
        pdf_path = self.logs_dir / pdf_filename
        
        # Also create a copy in root for convenience
        pdf_path_root = self.root_dir / output_pdf
        
        with PdfPages(pdf_path) as pdf:
            # Page 1: Title and Summary
            self._create_title_page(pdf)
                  
            # Page 2: Optimized Metrics (Parallel Token Fetch)
            self._create_optimized_metrics_page(pdf, baseline, decompressor)
            
            # Page 3: Detailed Metrics Table
            self._create_metrics_table(pdf, baseline, decompressor)
        
        # Copy to root directory for easy access
        shutil.copy(pdf_path, pdf_path_root)
            
        print(f"✓ PDF report generated: {pdf_path}")
        print(f"✓ Copy saved to: {pdf_path_root}")
        return pdf_path
        
    def _create_title_page(self, pdf):
        """Crear página de título para el PDF"""
        fig = plt.figure(figsize=(8.5, 11))
        
        # Add title at top
        fig.text(0.5, 0.93, 'Comparación de Rendimiento:', 
                ha='center', fontsize=22, fontweight='bold')
        fig.text(0.5, 0.89, 'Procesador Baseline vs Descompresor',
                ha='center', fontsize=20, fontweight='bold')
        
        # Add summary sections
        ax = fig.add_subplot(111)
        ax.axis('off')
        
        # Header info
        header_text = f"""Generado: {time.strftime('%Y-%m-%d %H:%M:%S')}
Proyecto de Aplicación - II Semestre 2025
Jose Antonio Espinoza Chaves | 2019083698"""
        
        ax.text(0.5, 0.81, header_text, fontsize=10, ha='center',
                family='monospace', style='italic',
                bbox=dict(boxstyle='round', facecolor='lightblue', alpha=0.3))
        
        # Description
        desc_text = """DESCRIPCIÓN DEL SISTEMA

Este reporte compara el rendimiento de dos implementaciones 
de procesador ARM32:

  • Procesador Baseline
    Pipeline estándar de 5 etapas sin compresión
    Instrucciones de 32 bits
    
  • Procesador con Descompresor
    Pipeline de 5 etapas con módulo de descompresión
    Instrucciones comprimidas (tokens de 8 bits)
    Descompresión en tiempo real por hardware
    
    Las métricas optimizadas asumen fetch paralelo de tokens (4 tokens por fetch de 32 bits)"""
        
        ax.text(0.1, 0.68, desc_text, fontsize=10, verticalalignment='top',
                family='sans-serif', linespacing=1.5)
        
        # Key results box
        baseline_cpi = self.results['baseline'].get('cpi', 0)
        opt_cpi = self.results['decompressor'].get('optimized_cpi', 0)
        compression = self.results['decompressor'].get('compression_ratio', 0)
        baseline_bw = self.results['baseline'].get('instruction_memory_bandwidth', 0)
        decomp_bw = self.results['decompressor'].get('instruction_memory_bandwidth', 0)
        bw_reduction = ((baseline_bw - decomp_bw) / baseline_bw * 100) if baseline_bw > 0 else 0
         
        # Metrics compared
        metrics_text = """MÉTRICAS COMPARADAS

  ✓ Ciclos de Ejecución
  ✓ Instrucciones Ejecutadas  
  ✓ CPI / IPC
  ✓ Utilización del Pipeline
  ✓ Ancho de Banda de Memoria
  ✓ Throughput de Instrucciones
  ✓ Speedup en Fetch de Instrucciones"""
        
        ax.text(0.1, 0.22, metrics_text, fontsize=9, verticalalignment='top',
                family='sans-serif', linespacing=1.5)
          
        pdf.savefig(fig)
        plt.close()
     
    def _create_optimized_metrics_page(self, pdf, baseline, decompressor):
        """Create page showing optimized performance with parallel token fetch"""
        fig, axes = plt.subplots(2, 2, figsize=(11, 8.5))
        fig.suptitle('Optimized Performance', fontsize=16, fontweight='bold')
        
        # 1. CPI Comparison: Baseline vs Actual vs Optimized
        ax = axes[0, 0]
        baseline_cpi = baseline.get('cpi', 0)
        actual_cpi = decompressor.get('cpi', 0)
        opt_cpi = decompressor.get('optimized_cpi', 0)
        
        cpi_values = [baseline_cpi, actual_cpi, opt_cpi]
        labels = ['Baseline', 'Decompressor\n(Sequential)', 'Decompressor\n(Optimized)']
        colors_list = [COLORS['baseline'], COLORS['decompressor'], COLORS['positive']]
        
        bars = ax.bar(labels, cpi_values, color=colors_list)
        ax.set_ylabel('Cycles Per Instruction')
        ax.set_title('CPI Comparison')
        ax.grid(axis='y', alpha=0.3)
        
        for bar in bars:
            height = bar.get_height()
            ax.text(bar.get_x() + bar.get_width()/2., height,
                   f'{height:.3f}', ha='center', va='bottom', fontweight='bold')
        
        # Add improvement percentage
        if baseline_cpi > 0 and opt_cpi > 0:
            improvement = ((baseline_cpi - opt_cpi) / baseline_cpi) * 100
            ax.text(0.5, ax.get_ylim()[1] * 0.95,
                   f'{improvement:.1f}% Better CPI',
                   ha='center', va='top', transform=ax.transAxes,
                   bbox=dict(boxstyle='round', facecolor='lightgreen', alpha=0.8),
                   fontweight='bold', fontsize=11)
        
        # 2. IPC Comparison
        ax = axes[0, 1]
        baseline_ipc = baseline.get('ipc', 0)
        actual_ipc = decompressor.get('ipc', 0)
        opt_ipc = decompressor.get('optimized_ipc', 0)
        
        ipc_values = [baseline_ipc, actual_ipc, opt_ipc]
        bars = ax.bar(labels, ipc_values, color=colors_list)
        ax.set_ylabel('Instructions Per Cycle')
        ax.set_title('IPC Comparison')
        ax.grid(axis='y', alpha=0.3)
        
        for bar in bars:
            height = bar.get_height()
            ax.text(bar.get_x() + bar.get_width()/2., height,
                   f'{height:.3f}', ha='center', va='bottom', fontweight='bold')
        
        # Add improvement percentage
        if baseline_ipc > 0 and opt_ipc > 0:
            improvement = ((opt_ipc - baseline_ipc) / baseline_ipc) * 100
            ax.text(0.5, ax.get_ylim()[1] * 0.95,
                   f'{improvement:.1f}% Better IPC',
                   ha='center', va='top', transform=ax.transAxes,
                   bbox=dict(boxstyle='round', facecolor='lightgreen', alpha=0.8),
                   fontweight='bold', fontsize=11)
        
        # 3. Fetch Speedup
        ax = axes[1, 0]
        fetch_speedup = decompressor.get('fetch_speedup', 1.0)
        effective_fetch = decompressor.get('effective_fetch_cycles', 0)
        actual_fetch = decompressor.get('instruction_fetches', 0)
        
        bars = ax.bar(['Actual\nFetches', 'Effective\nFetches'],
                      [actual_fetch, effective_fetch],
                      color=[COLORS['negative'], COLORS['positive']])
        ax.set_ylabel('Fetch Cycles')
        ax.set_title('Instruction Fetch Cycles')
        ax.grid(axis='y', alpha=0.3)
        
        for bar in bars:
            height = bar.get_height()
            ax.text(bar.get_x() + bar.get_width()/2., height,
                   f'{int(height)}', ha='center', va='bottom', fontweight='bold')
        
        ax.text(0.5, ax.get_ylim()[1] * 0.95,
               f'{fetch_speedup:.2f}x Speedup',
               ha='center', va='top', transform=ax.transAxes,
               bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.8),
               fontweight='bold', fontsize=11)
        
        # 4. Throughput Comparison
        ax = axes[1, 1]
        baseline_throughput = baseline.get('instruction_throughput', 0)
        actual_throughput = decompressor.get('instruction_throughput', 0)
        # Calculate optimized throughput based on optimized IPC
        opt_throughput = opt_ipc * 100.0 if opt_ipc > 0 else 0
        
        throughput_values = [baseline_throughput, actual_throughput, opt_throughput]
        bars = ax.bar(labels, throughput_values, color=colors_list)
        ax.set_ylabel('Instructions per 100 Cycles')
        ax.set_title('Instruction Throughput')
        ax.grid(axis='y', alpha=0.3)
        
        for bar in bars:
            height = bar.get_height()
            ax.text(bar.get_x() + bar.get_width()/2., height,
                   f'{height:.1f}', ha='center', va='bottom', fontweight='bold')
        
        plt.tight_layout()
        pdf.savefig(fig)
        plt.close()
        
    def _create_metrics_table(self, pdf, baseline, decompressor):
        """Create detailed metrics comparison table - Baseline vs Optimized Decompressor"""
        fig = plt.figure(figsize=(11, 8.5))
        fig.suptitle('Detailed Metrics Comparison: Baseline vs Optimized Decompressor', 
                     fontsize=16, fontweight='bold')
        
        ax = fig.add_subplot(111)
        ax.axis('tight')
        ax.axis('off')
        
        # Map of original metrics to their optimized counterparts
        optimized_mapping = {
            'cpi': 'optimized_cpi',
            'ipc': 'optimized_ipc',
            'execution_latency': 'optimized_execution_latency',
            'instruction_throughput': 'optimized_ipc'  # Will calculate from optimized_ipc
        }
        
        # Priority metrics to show first
        priority_metrics = [
            'cpi', 'ipc', 'pipeline_utilization', 'instruction_throughput',
            'total_cycles', 'total_instructions', 'execution_latency',
            'instruction_memory_bandwidth', 'memory_bandwidth',
            'instruction_fetches', 'effective_fetch_cycles', 'fetch_speedup',
            'alu_operations', 'memory_accesses', 'compression_ratio'
        ]
        
        # Get all available keys
        all_keys = sorted(set(list(baseline.keys()) + list(decompressor.keys())))
        
        # Reorder to show priority metrics first
        ordered_keys = []
        for key in priority_metrics:
            if key in all_keys:
                ordered_keys.append(key)
        # Add remaining keys
        for key in all_keys:
            if key not in ordered_keys and not key.startswith('optimized_'):
                ordered_keys.append(key)
        
        table_data = [['Metric', 'Baseline', 'Optimized', 'Difference', '% Change']]
        
        for key in ordered_keys:
            base_val = baseline.get(key, 0)
            
            # Get optimized value if available, otherwise use regular decompressor value
            if key in optimized_mapping:
                opt_key = optimized_mapping[key]
                if opt_key == 'optimized_ipc' and key == 'instruction_throughput':
                    # Calculate optimized throughput from optimized IPC
                    opt_val = decompressor.get('optimized_ipc', 0) * 100.0
                else:
                    opt_val = decompressor.get(opt_key, decompressor.get(key, 0))
            else:
                opt_val = decompressor.get(key, 0)
            
            # Skip if both are zero or non-numeric
            if isinstance(base_val, str) or isinstance(opt_val, str):
                continue
            
            # Skip if both values are zero
            if base_val == 0 and opt_val == 0:
                continue
                
            diff = opt_val - base_val
            
            if base_val != 0:
                pct_change = ((opt_val - base_val) / base_val) * 100
            else:
                pct_change = 0 if opt_val == 0 else float('inf')
            
            # Format values based on magnitude
            if isinstance(base_val, float) and base_val < 100:
                base_str = f'{base_val:.4f}'
                opt_str = f'{opt_val:.4f}'
                diff_str = f'{diff:+.4f}'
            else:
                base_str = f'{base_val:.0f}'
                opt_str = f'{opt_val:.0f}'
                diff_str = f'{diff:+.0f}'
            
            if pct_change == float('inf'):
                pct_str = '∞'
            elif pct_change == 0:
                pct_str = '0.00%'
            else:
                pct_str = f'{pct_change:+.2f}%'
            
            table_data.append([key, base_str, opt_str, diff_str, pct_str])
        
        # Create table
        table = ax.table(cellText=table_data, cellLoc='left', loc='center',
                        colWidths=[0.35, 0.15, 0.15, 0.15, 0.20])
        
        table.auto_set_font_size(False)
        table.set_fontsize(8)
        table.scale(1, 2)
        
        # Style header row
        for i in range(5):
            cell = table[(0, i)]
            cell.set_facecolor(COLORS['neutral'])
            cell.set_text_props(weight='bold', color='white')
        
        # Color code improvements/regressions in % Change column
        for i in range(1, len(table_data)):
            pct_str = table_data[i][4]
            
            if pct_str == '∞':
                # Special case for infinite improvement
                table[(i, 4)].set_facecolor(COLORS['positive'])
                table[(i, 4)].set_text_props(color='white', weight='bold')
            elif pct_str == '0.00%':
                # No change - keep gray
                table[(i, 4)].set_facecolor(COLORS['neutral'])
                table[(i, 4)].set_text_props(color='white')
            else:
                pct_val = float(pct_str.replace('%', '').replace('+', ''))
                
                # Determine if lower or higher is better based on metric name
                metric_name = table_data[i][0].lower()
                
                # Metrics where LOWER is BETTER
                lower_is_better = any(x in metric_name for x in [
                    'cpi', 'cycles', 'nop', 'latency', 'bandwidth',
                    'memory_access', 'fetches'
                ])
                
                # Metrics where HIGHER is BETTER
                higher_is_better = any(x in metric_name for x in [
                    'ipc', 'throughput', 'utilization', 'speedup', 
                    'efficiency', 'compression', 'savings'
                ])
                
                # Determine color
                if lower_is_better:
                    # Negative % = improvement (optimized is lower)
                    if pct_val < -0.01:  # Better (green)
                        color = COLORS['positive']
                    elif pct_val > 0.01:  # Worse (red)
                        color = COLORS['negative']
                    else:  # Same (gray)
                        color = COLORS['neutral']
                elif higher_is_better:
                    # Positive % = improvement (optimized is higher)
                    if pct_val > 0.01:  # Better (green)
                        color = COLORS['positive']
                    elif pct_val < -0.01:  # Worse (red)
                        color = COLORS['negative']
                    else:  # Same (gray)
                        color = COLORS['neutral']
                else:
                    # Neutral metric or unknown - just show difference
                    color = COLORS['neutral']
                
                table[(i, 4)].set_facecolor(color)
                if color == COLORS['neutral']:
                    table[(i, 4)].set_text_props(color='white')
                else:
                    table[(i, 4)].set_text_props(color='white', weight='bold')
        
        # Add legend
        legend_text = ("Green = Optimized is Better  |  Red = Optimized is Worse  |  "
                      "Gray = Same or Neutral")
        fig.text(0.5, 0.02, legend_text, ha='center', fontsize=10, 
                bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.5))
        
        plt.tight_layout()
        pdf.savefig(fig)
        plt.close()
        
    def run_full_comparison(self):
        """Execute the complete comparison workflow"""
        start_time = time.time()
        
        self.print_header("Baseline vs Decompression Processor Comparison")
        print(f"Start time: {time.strftime('%Y-%m-%d %H:%M:%S')}")
        print(f"Working directory: {self.root_dir}")
        
        # Step 1: Run compression
        if not self.run_compression():
            print("\n✗ Comparison aborted: Compression failed")
            return False
        
        # Step 2: Prepare baseline instructions
        if not self.prepare_baseline_instructions():
            print("\n✗ Comparison aborted: Failed to prepare baseline instructions")
            return False
        
        # Step 3: Prepare decompressor instructions
        if not self.prepare_decompressor_instructions():
            print("\n✗ Comparison aborted: Failed to prepare decompressor instructions")
            return False
        
        # Step 4: Run both processors
        if not self.run_both_processors():
            print("\n✗ Comparison aborted: Processor simulations failed")
            return False
        
        # Step 5: Collect metrics
        if not self.collect_metrics():
            print("\n✗ Comparison aborted: Failed to collect metrics")
            return False
        
        # Step 6: Generate PDF report
        try:
            pdf_path = self.generate_comparison_report()
        except Exception as e:
            print(f"\n✗ Failed to generate PDF report: {e}")
            import traceback
            traceback.print_exc()
            return False
        
        # Summary
        elapsed = time.time() - start_time
        self.print_header("Comparison Complete!")
        print(f"Total time: {elapsed:.2f} seconds")
        print(f"PDF report: {pdf_path}")
        print(f"\nKey Results:")
        print(f"  Baseline CPI:                      {self.results['baseline'].get('cpi', 0):.3f}")
        print(f"  Decompressor CPI:                  {self.results['decompressor'].get('cpi', 0):.3f}")
        print(f"  Decompressor Optimized CPI:        {self.results['decompressor'].get('optimized_cpi', 0):.3f}")
        print(f"  Compression Ratio:                 {self.results['decompressor'].get('compression_ratio', 0):.2f}%")
        print(f"  Baseline Inst Memory BW:           {self.results['baseline'].get('instruction_memory_bandwidth', 0):.2f} bits/cycle")
        print(f"  Decompressor Inst Memory BW:       {self.results['decompressor'].get('instruction_memory_bandwidth', 0):.2f} bits/cycle")
        
        # Calculate bandwidth reduction
        baseline_bw = self.results['baseline'].get('instruction_memory_bandwidth', 0)
        decomp_bw = self.results['decompressor'].get('instruction_memory_bandwidth', 0)
        if baseline_bw > 0:
            bw_reduction = ((baseline_bw - decomp_bw) / baseline_bw) * 100
            print(f"  Instruction Memory BW Reduction:   {bw_reduction:.1f}%")
        
        # Show optimized metrics
        opt_cpi = self.results['decompressor'].get('optimized_cpi', 0)
        baseline_cpi = self.results['baseline'].get('cpi', 0)
        if opt_cpi > 0 and baseline_cpi > 0:
            cpi_improvement = ((baseline_cpi - opt_cpi) / baseline_cpi) * 100
            print(f"  CPI Improvement (optimized fetch): {cpi_improvement:.1f}%")
        
        fetch_speedup = self.results['decompressor'].get('fetch_speedup', 0)
        if fetch_speedup > 1.0:
            print(f"  Fetch Speedup:                     {fetch_speedup:.2f}x")
        
        print(f"\nNote: Compression provides significant memory bandwidth savings.")
        print(f"      Optimized metrics assume parallel token fetch (4 tokens per 32-bit fetch).")
        print(f"      Decompressor fetches fewer bits from instruction memory while")
        print(f"      maintaining the same computational performance.")
        
        return True


def main():
    """Main entry point"""
    print("Processor Comparison Tool")
    print("=" * 70)
    
    # Check for required dependencies
    try:
        import matplotlib
        import numpy
    except ImportError as e:
        print(f"\n✗ Missing required Python package: {e}")
        print("Please install: pip install matplotlib numpy")
        return 1
    
    # Create comparison instance
    comparison = ProcessorComparison()
    
    # Run full comparison
    success = comparison.run_full_comparison()
    
    return 0 if success else 1


if __name__ == "__main__":
    sys.exit(main())
