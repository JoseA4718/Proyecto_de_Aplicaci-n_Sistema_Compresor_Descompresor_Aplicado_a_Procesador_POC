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

## Formato de Instrucciones
Las instrucciones son palabras de 32 bits con los siguientes tipos:

### Instrucciones Inmediatas (Tipo: 10, func[4] = 1)
```
B0200005 - SUMI R2, R0, #5 (Cargar inmediato 5 en R2)
B0400003 - SUMI R4, R0, #3 (Cargar inmediato 3 en R4)
```

### Instrucciones de Registro (Tipo: 10, func[4] = 0)
```
80200400 - SUM R2, R2, R4 (R2 = R2 + R4)
80400600 - SUM R4, R4, R6 (R4 = R4 + R6)
```

### Instrucciones de Salto
```
60000000 - JR R0 (Saltar a dirección en R0)
```

### Instrucciones NOP
```
00000000 - NOP (Sin operación)
```

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

## Características del Pipeline

### Etapa IF (Instruction Fetch)
- Lee instrucción desde memoria de instrucciones
- Incrementa PC
- Pasa instrucción a IF/ID

### Etapa ID (Instruction Decode)
- Decodifica instrucción
- Lee registros
- Genera señales de control
- Extiende inmediatos

### Etapa EX (Execute)
- Ejecuta operación ALU
- Calcula direcciones de memoria
- Evalúa condiciones de salto

### Etapa MEM (Memory Access)
- Accede a memoria de datos
- Ejecuta loads/stores

### Etapa WB (Write Back)
- Escribe resultado en registro destino

## Manejo de Riesgos

### Riesgos de Datos
El compilador inserta NOPs automáticamente para resolver dependencias de datos.

### Riesgos de Control
Los saltos causan vaciado del pipeline (flush) para mantener corrección.

## Comparación con Descompresor

Este procesador sirve como **línea base** para comparar contra el procesador con descompresión. Las métricas clave de comparación son:

- **Ancho de banda de memoria de instrucciones**: Esperado ser MAYOR en baseline
- **CPI**: Esperado ser SIMILAR (mismas instrucciones)
- **Ciclos totales**: Esperado ser SIMILAR (mismas instrucciones)

El procesador con descompresión debe mostrar:
- ✅ **Menor ancho de banda de memoria de instrucciones** (~56% reducción)
- ✅ **Mejor CPI optimizado** cuando se considera fetch paralelo (~63% mejora)
- ✅ **Mayor eficiencia de memoria**

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

## Notas de Implementación

### Contador de Instrucciones
El testbench cuenta instrucciones válidas excluyendo NOPs y la primera instrucción de inicialización.

### Detección de Finalización
La simulación termina cuando se ejecuta una instrucción JR R0 (salto a registro 0), indicando fin del programa.

### Formato de Métricas
Todas las métricas se escriben en formato `key=value` para fácil parsing por scripts de Python.

## Verificación

### Validación de Operaciones ALU
El testbench verifica que:
- Las sumas se ejecuten correctamente
- Los registros mantengan valores correctos
- El pipeline fluya sin deadlocks

### Contadores de Eventos
- **ALU Operations**: Cuenta operaciones ALU (suma, resta, etc.)
- **Memory Accesses**: Cuenta loads y stores
- **NOPs**: Cuenta instrucciones NOP

## Uso en Comparación Automática

Este procesador es ejecutado automáticamente por `run_full_comparison.py`:

1. El script copia `instructions.txt` desde el sistema compresor
2. Ejecuta ModelSim con `run_test.do`
3. Lee `performance_metrics.txt`
4. Compara métricas contra el procesador con descompresión
5. Genera reporte PDF con gráficos comparativos

---

*Procesador Baseline - Línea Base para Comparación*  
*Proyecto de Aplicación - II Semestre 2025*

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