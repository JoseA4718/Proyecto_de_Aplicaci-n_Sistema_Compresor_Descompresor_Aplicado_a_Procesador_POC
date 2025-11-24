# Procesador ARM32 Baseline - Documentación del Proyecto

## Descripción General
Este es un procesador ARM32 simplificado diseñado como línea base para comparaciones de rendimiento. Ha sido adaptado para servir como referencia en la evaluación de mejoras mediante compresión de instrucciones.

## Arquitectura
- **Pipeline**: 5 etapas (IF, ID, EX, MEM, WB)
- **Memoria de Instrucciones**: 400 palabras (32-bit cada una)
- **Memoria de Datos**: 1024 palabras (32-bit cada una)
- **Archivo de Registros**: 16 registros (R0-R15)
- **Operaciones ALU**: ADD, SUB, MUL, DIV, MOD, CMP, TEST

## Módulos Principales

### Procesador Central
- `pipeline_processor.sv` - Procesador principal con pipeline de 5 etapas
- `control_unit.sv` - Decodificador de instrucciones y generador de señales de control
- `alu.sv` - Unidad Aritmético-Lógica
- `register_file.sv` - Archivo de 16 registros con puertos de lectura/escritura

### Sistema de Memoria
- `memory_controller.sv` - Controlador de memoria simplificado
- `dmem_ram.sv` - RAM de datos de 1024 palabras
- `imem.sv` - Interfaz de memoria de instrucciones

### Registros de Pipeline
- `segment_if_id.sv` - Registro de pipeline IF/ID
- `segment_id_ex.sv` - Registro de pipeline ID/EX
- `segment_ex_mem.sv` - Registro de pipeline EX/MEM
- `segment_mem_wb.sv` - Registro de pipeline MEM/WB

### Módulos de Soporte
- `pc_register.sv` - Contador de Programa
- `adder.sv` - Sumador de 32 bits
- `mux_2to1.sv`, `mux_4to1.sv` - Multiplexores
- `sign_extend.sv` - Unidad de extensión de signo
- `jump_unit.sv` - Lógica de saltos y bifurcaciones

## Testbench y Métricas

### `enhanced_processor_tb.sv`
Testbench mejorado que monitorea métricas de rendimiento en tiempo real:

**Métricas Recolectadas:**
- Total de ciclos de ejecución
- Total de instrucciones ejecutadas
- CPI (Cycles Per Instruction)
- IPC (Instructions Per Cycle)
- Latencia de ejecución
- Utilización del pipeline
- Throughput de instrucciones
- Operaciones ALU
- Accesos a memoria
- Ancho de banda de memoria de instrucciones
- Ancho de banda de memoria de datos
- NOPs ejecutados

**Archivo de Salida:**
- `performance_metrics.txt` - Todas las métricas en formato clave=valor

## Ejecución

### Compilación y Simulación
```bash
# Opción 1: Usando ModelSim GUI
vsim -do run_test.do

# Opción 2: Usando ModelSim en modo consola
vsim -c -do run_test.do

# Opción 3: Desde el script de comparación principal
cd ..
python run_full_comparison.py
```

### Archivos de Entrada
- `instructions.txt` - Instrucciones hexadecimales (32-bit), una por línea

### Archivos de Salida
- `performance_metrics.txt` - Métricas de rendimiento
- `simulation_log.txt` - Log de simulación (si se habilita)
- `processor_test.vcd` - Forma de onda VCD (si se habilita)

## Script de Simulación

### `run_test.do`
Script de ModelSim que:
1. Crea biblioteca de trabajo
2. Compila todos los módulos SystemVerilog
3. Ejecuta el testbench
4. Genera archivo de métricas
5. Sale automáticamente

## Métricas de Rendimiento

### Métricas Básicas
| Métrica | Descripción | Fórmula |
|---------|-------------|---------|
| Total Cycles | Ciclos totales de ejecución | Monitoreado en testbench |
| Total Instructions | Instrucciones ejecutadas | Contador en pipeline |
| CPI | Ciclos por instrucción | Total Cycles / Total Instructions |
| IPC | Instrucciones por ciclo | Total Instructions / Total Cycles |
| Execution Latency | Latencia desde primera hasta última instrucción | Last Instruction Time - First Instruction Time |

### Métricas de Pipeline
| Métrica | Descripción | Fórmula |
|---------|-------------|---------|
| Pipeline Utilization | Porcentaje de uso del pipeline | (Total Instructions × 5) / (Total Cycles × 5) × 100 |
| Instruction Throughput | Instrucciones por 100 ciclos | (Total Instructions / Total Cycles) × 100 |

### Métricas de Memoria
| Métrica | Descripción | Cálculo |
|---------|-------------|---------|
| Memory Accesses | Total de accesos a memoria | Loads + Stores |
| Instruction Memory Bandwidth | Bits transferidos por ciclo | (Instruction Fetches × 32) / Total Cycles |
| Data Memory Bandwidth | Bits transferidos por ciclo | (Memory Accesses × 32) / Total Cycles |

## Manejo de Riesgos

### Riesgos de Datos
El compilador inserta NOPs automáticamente para resolver dependencias de datos.

### Riesgos de Control
Los saltos causan vaciado del pipeline (flush) para mantener corrección.

## Comparación con Descompresor

Este procesador sirve como un base para comparar contra el procesador con descompresión. Las métricas clave de comparación son:

- **Ancho de banda de memoria de instrucciones**: Esperado ser MAYOR en baseline
- **CPI**: Esperado ser SIMILAR (mismas instrucciones)
- **Ciclos totales**: Esperado ser SIMILAR (mismas instrucciones)

El procesador con descompresión debe mostrar:
- **Menor ancho de banda de memoria de instrucciones** 
- **Mejor CPI optimizado** cuando se considera fetch paralelo 
- **Mayor eficiencia de memoria**

## Estructura de Archivos

```
Procesador_Baseline/
├── pipeline_processor.sv       # Procesador principal
├── control_unit.sv            # Unidad de control
├── alu.sv                     # ALU
├── register_file.sv           # Archivo de registros
├── memory_controller.sv       # Controlador de memoria
├── dmem_ram.sv               # Memoria de datos
├── imem.sv                   # Memoria de instrucciones
├── segment_*.sv              # Registros de pipeline
├── pc_register.sv            # Contador de programa
├── adder.sv                  # Sumador
├── mux_*.sv                  # Multiplexores
├── sign_extend.sv            # Extensión de signo
├── jump_unit.sv              # Unidad de saltos
├── enhanced_processor_tb.sv  # Testbench con métricas
├── run_test.do               # Script de ModelSim
├── instructions.txt          # Instrucciones de entrada
└── performance_metrics.txt   # Métricas de salida
```
