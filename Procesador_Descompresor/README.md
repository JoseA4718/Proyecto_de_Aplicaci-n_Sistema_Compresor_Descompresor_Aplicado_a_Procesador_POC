# Procesador ARM32 con Descompresor - Documentación del Proyecto

## Descripción General
Este es un procesador ARM32 mejorado con capacidades integradas de descompresión de instrucciones. Extiende el procesador baseline con un módulo de descompresión que traduce instrucciones comprimidas desde la memoria de instrucciones a instrucciones ARM32 completas de 32 bits antes de la ejecución.

## Arquitectura
- **Pipeline**: 5 etapas (IF, ID, EX, MEM, WB) con etapa de descompresión
- **Memoria de Instrucciones**: Almacenamiento de instrucciones comprimidas
- **Memoria de Datos**: 1024 palabras (32-bit cada una)
- **Archivo de Registros**: 16 registros (R0-R15)
- **Operaciones ALU**: ADD, SUB, MUL, DIV, MOD, CMP, TEST
- **Módulo de Descompresión**: Descompresión en tiempo real usando tabla de traducción

## Módulos Principales

### Procesador Central
- `pipeline_processor.sv` - Procesador principal con pipeline de 5 etapas e integración de descompresión
- `control_unit.sv` - Decodificador de instrucciones y generador de señales de control
- `alu.sv` - Unidad Aritmético-Lógica
- `register_file.sv` - Archivo de 16 registros con puertos de lectura/escritura

### Sistema de Descompresión
- `decompression_module.sv` - Unidad de descompresión en hardware con tabla de traducción
- `translation_table.txt` - Mapeo de códigos comprimidos a instrucciones completas
- `final_code.txt` - Secuencia de instrucciones comprimidas para pruebas

### Sistema de Memoria
- `memory_controller.sv` - Controlador de memoria con integración de descompresión
- `dmem_ram.sv` - RAM de datos de 1024 palabras
- `imem.sv` - Interfaz de memoria de instrucciones
- `memory_access.sv` - Wrapper de acceso a memoria

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

## Proceso de Descompresión

### Cómo Funciona
1. **Fetch de instrucción comprimida** - PC direcciona memoria de instrucciones comprimidas
2. **Búsqueda en tabla** - Módulo de descompresión busca en tabla de traducción
3. **Traducción** - Si es token (8-bit), se traduce a instrucción completa (32-bit)
4. **Paso directo** - Si es instrucción completa, pasa sin modificar
5. **Ejecución** - Instrucción completa continúa por el pipeline normal

### Formato de Instrucciones Comprimidas

**Tokens (8-bit):**
```
01 → B0200005  (SUMI R2, R0, #5)
02 → B0400003  (SUMI R4, R0, #3)
03 → 80200400  (SUM R2, R2, R4)
...
```

**Instrucciones Completas (32-bit):**
```
00000000 → NOP (pasa directamente)
60000000 → JR R0 (pasa directamente)
```

## Módulo de Descompresión

### `decompression_module.sv`

**Características:**
- Tabla de traducción interna (256 entradas, 8-bit → 32-bit)
- Lógica combinacional para traducción instantánea
- Detección automática de tokens vs instrucciones completas
- Latencia de 1 ciclo para traducción

**Interfaz:**
```systemverilog
module decompression_module (
    input  logic [31:0] compressed_instruction,  // Entrada comprimida
    output logic [31:0] decompressed_instruction // Salida descomprimida
);
```

**Lógica de Detección:**
- Si `compressed_instruction[31:8] == 24'h000000` → Es token
- Token = `compressed_instruction[7:0]`
- Buscar en tabla de traducción
- Caso contrario → Pasar instrucción completa sin cambios

## Testbench y Métricas

### `enhanced_processor_tb.sv`

Testbench mejorado que monitorea métricas de rendimiento incluyendo optimizaciones:

**Métricas Básicas:**
- Total de ciclos de ejecución
- Total de instrucciones ejecutadas
- CPI (Cycles Per Instruction)
- IPC (Instructions Per Cycle)
- Latencia de ejecución

**Métricas de Pipeline:**
- Utilización del pipeline
- Throughput de instrucciones
- Operaciones ALU
- NOPs ejecutados

**Métricas de Memoria:**
- Accesos a memoria
- Ancho de banda de memoria de instrucciones
- Ancho de banda de memoria de datos
- Fetches de instrucciones

**Métricas de Compresión:**
- Ratio de compresión
- Instrucciones descomprimidas
- Eficiencia de memoria
- Ahorro en fetch de instrucciones

**Métricas Optimizadas (Nuevo):**
- `effective_fetch_cycles` - Ciclos efectivos asumiendo fetch paralelo
- `optimized_cpi` - CPI considerando fetch paralelo de tokens
- `optimized_ipc` - IPC mejorado
- `fetch_speedup` - Factor de aceleración en fetch
- `optimized_execution_latency` - Latencia optimizada

### Cálculo de Métricas Optimizadas

El testbench simula fetch paralelo de tokens:

```systemverilog
// Leer final_code.txt y agrupar tokens consecutivos
// Cada grupo de hasta 4 tokens = 1 fetch de 32 bits
// Calcular ciclos efectivos de fetch

effective_fetch_cycles = número de grupos (cada uno con 1-4 tokens)
cycles_saved = instruction_fetches - effective_fetch_cycles
optimized_cpi = (total_cycles - cycles_saved) / total_instructions
fetch_speedup = instruction_fetches / effective_fetch_cycles
```

**Ejemplo:**
```
Tokens consecutivos: [01, 02, 03, 04, 05, 06, 07, 08]
Grupos: [01,02,03,04] [05,06,07,08]
Fetches secuenciales: 8
Fetches paralelos: 2
Speedup: 4x
```

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
- `final_code.txt` - Instrucciones comprimidas (tokens + instrucciones completas)
- `translation_table.txt` - Tabla de traducción token → instrucción

### Archivos de Salida
- `performance_metrics.txt` - Métricas de rendimiento (incluye optimizadas)
- `simulation_log.txt` - Log de simulación (si se habilita)

## Resultados Esperados

### Comparado con Baseline

**Ancho de Banda de Memoria:**
- ✅ **56.2% REDUCCIÓN** en ancho de banda de instrucciones
- Baseline: 25.05 bits/ciclo
- Descompresor: 10.98 bits/ciclo

**CPI (Actual vs Optimizado):**
- Actual: 4.254 (mismo que baseline - overhead de fetch)
- ✅ **Optimizado: 1.559** (63.3% mejor que baseline)

**IPC (Optimizado):**
- Baseline: 0.235
- ✅ **Optimizado: 0.641** (173% mejor)

**Fetch Speedup:**
- ✅ **5.24x** más rápido con fetch paralelo

**Compresión:**
- ✅ **69.89%** ratio de compresión
- 253 tokens + 109 instrucciones completas

## Script de Simulación

### `run_test.do`
Script de ModelSim que:
1. Crea biblioteca de trabajo
2. Compila todos los módulos SystemVerilog
3. Compila módulo de descompresión
4. Ejecuta el testbench con métricas
5. Genera archivo de métricas optimizadas
6. Sale automáticamente

## Ventajas del Sistema

### 1. Reducción de Ancho de Banda
- Menos bits transferidos por ciclo
- Menor consumo de energía en bus de instrucciones
- Menor presión en jerarquía de memoria

### 2. Mayor Densidad de Código
- 70% menos espacio en memoria de instrucciones
- Más código cabe en caches pequeñas
- Mejor localidad espacial

### 3. Potencial de Rendimiento (Fetch Paralelo)
- 5.24x speedup en fetch
- 63.3% mejora en CPI
- 173% mejora en IPC

### 4. Transparencia
- Descompresión en hardware, invisible al programador
- Mismo ISA que procesador baseline
- Sin cambios en software

## Limitaciones Actuales

### 1. Overhead de Fetch Secuencial
- Implementación actual: 1 token = 1 fetch = 1 ciclo
- CPI actual igual al baseline (4.254)

### 2. Solución: Fetch Paralelo
- Implementar fetch de 32 bits que contenga 4 tokens
- Detector de límites de tokens
- Buffer de tokens
- **Resultado esperado**: CPI 1.559, IPC 0.641

## Tabla de Traducción

### Formato: `translation_table.txt`
```
B0200005
B0400003
80200400
...
```

- Línea N corresponde al token N
- Token 01 → Línea 1
- Token 02 → Línea 2
- etc.

### Generación
La tabla es generada automáticamente por `Sistema_Compresor/transform.py`:
1. Detecta patrones repetidos
2. Asigna tokens (01-FF)
3. Crea tabla de traducción
4. Genera código comprimido

## Verificación

### Testbench de Descompresión: `simple_decompression_test.sv`
Test standalone del módulo de descompresión:
```bash
vsim -c -do test_decompression.do
```

Verifica:
- Traducción correcta de tokens
- Paso directo de instrucciones completas
- Manejo de casos límite

## Uso en Comparación Automática

Este procesador es ejecutado automáticamente por `run_full_comparison.py`:

1. El script copia `final_code.txt` y `translation_table.txt`
2. Ejecuta ModelSim con `run_test.do`
3. Lee `performance_metrics.txt` (incluye métricas optimizadas)
4. Compara contra baseline
5. Genera reporte PDF con gráficos comparativos

## Estructura de Archivos

```
Procesador_Descompresor/
├── pipeline_processor.sv         # Procesador principal
├── control_unit.sv              # Unidad de control
├── alu.sv                       # ALU
├── register_file.sv             # Archivo de registros
├── decompression_module.sv      # ⭐ Módulo de descompresión
├── memory_controller.sv         # Controlador de memoria
├── dmem_ram.sv                 # Memoria de datos
├── imem.sv                     # Memoria de instrucciones
├── memory_access.sv            # Wrapper de acceso
├── segment_*.sv                # Registros de pipeline
├── pc_register.sv              # Contador de programa
├── adder.sv                    # Sumador
├── mux_*.sv                    # Multiplexores
├── sign_extend.sv              # Extensión de signo
├── jump_unit.sv                # Unidad de saltos
├── enhanced_processor_tb.sv    # ⭐ Testbench con métricas optimizadas
├── simple_decompression_test.sv # Test standalone
├── run_test.do                 # Script principal
├── test_decompression.do       # Script de test
├── final_code.txt              # ⭐ Código comprimido (entrada)
├── translation_table.txt       # ⭐ Tabla de traducción (entrada)
└── performance_metrics.txt     # ⭐ Métricas completas (salida)
```

## Próximos Pasos

### Mejoras Propuestas
1. **Implementar fetch paralelo en hardware**
   - Buffer de tokens
   - Detector de límites
   - Fetch de 32 bits con múltiples tokens

2. **Cache de instrucciones comprimidas**
   - Mayor hit rate por densidad

3. **Prefetching inteligente**
   - Aprovechar predicción de saltos

4. **Compresión adaptativa**
   - Tabla de traducción dinámica

---

*Procesador con Descompresión - Sistema de Compresión de Instrucciones*  
*Proyecto de Aplicación - II Semestre 2025*
3. **Instruction expansion** - Compressed code mapped to full 32-bit instruction
4. **Pipeline execution** - Decompressed instruction flows through normal pipeline

### Translation Table Format
The `translation_table.txt` contains mappings in the format:
```
<compressed_code> <full_32bit_instruction>
```

Example:
```
01 B0200005    # Compressed code 01 → SUMI R2, R0, #5
02 B0400003    # Compressed code 02 → SUMI R4, R0, #3
03 80200400    # Compressed code 03 → SUM R2, R2, R4
```

### Compression Benefits
- **Memory savings** - Compressed instructions use fewer bits
- **Code density** - More instructions fit in instruction memory
- **Performance** - Decompression happens in parallel with fetch

## Instruction Format

### Compressed Instructions
- Variable length codes (typically 8-16 bits)
- Stored in `final_code.txt`
- Translated via `translation_table.txt`

### Expanded Instructions (32-bit)

#### Immediate Instructions (Type: 10, func[4] = 1)
- `B0200005` - SUMI R2, R0, #5 (Load immediate 5 into R2)
- `B0400003` - SUMI R4, R0, #3 (Load immediate 3 into R4)

#### Register Instructions (Type: 10, func[4] = 0)
- `80200400` - SUM R2, R2, R4 (R2 = R2 + R4)
- `80400600` - SUM R4, R4, R6 (R4 = R4 + R6)

#### Memory Instructions
- `62200000` - STR R2, [0] (Store R2 to memory address 0)
- `42A00000` - LDR R10, [0] (Load from memory address 0 to R10)

#### NOP Instruction
- `80000000` - NOP (No operation)

## Test Program
The decompressor test program (`final_code.txt`) performs:

1. **Initialize registers with immediate values**
   - Compressed codes expand to load immediates into R2, R4, R6, R8

2. **Arithmetic operations**
   - Multiple compressed arithmetic instructions
   - Register-to-register operations

3. **Memory operations**
   - Store results to data memory
   - Load and verify stored values
   - Additional arithmetic on loaded data

## Files Structure
```
├── pipeline_processor.sv           # Main processor with decompression
├── control_unit.sv                 # Control unit
├── alu.sv                         # ALU
├── register_file.sv               # Register file
├── decompression_module.sv        # Hardware decompression unit
├── memory_controller.sv           # Memory controller
├── dmem_ram.sv                    # Data RAM
├── imem.sv                        # Instruction memory interface
├── memory_access.sv               # Memory access wrapper
├── translation_table.txt          # Compression mapping table
├── final_code.txt                 # Compressed test program
├── enhanced_processor_tb.sv       # Enhanced testbench with decompression
├── simple_decompression_test.sv   # Simple decompression unit test
├── run_test.do                    # ModelSim main test script
├── test_decompression.do          # Decompression-specific test script
└── README.md                      # This file
```

## Running the Tests

### Using ModelSim/QuestaSim

#### Full Processor Test
```bash
cd Procesador_Descompresor
vsim -do run_test.do
```

#### Decompression Module Test
```bash
cd Procesador_Descompresor
vsim -do test_decompression.do
```

### Using other simulators
```bash
# Compile all SystemVerilog files
vlog -sv *.sv

# Run enhanced testbench
vsim work.enhanced_processor_tb

# Or run simple decompression test
vsim work.simple_decompression_test
```

## Verification Strategy

### Expected Results
After running the test program:
1. **Decompression accuracy** - All compressed codes correctly translated
2. **Register values** - Proper arithmetic results in register file
3. **Memory contents** - Expected values stored and retrieved
4. **Pipeline integrity** - No stalls or hazards from decompression

### Debugging
1. **Check decompression** - Verify compressed codes match translation table
2. **Monitor instruction expansion** - Decompressed instruction should be valid
3. **PC progression** - Should increment through compressed instruction space
4. **Pipeline flow** - Check all pipeline stages receive correct instructions

### Waveform Analysis
Key signals to observe:
- `clk`, `rst`, `switchStart` - Basic control
- `pc_out` - Program counter progression
- `compressed_instruction` - Compressed code from memory
- `decompressed_instruction` - Expanded instruction to pipeline
- `instruction` - Current instruction in IF/ID stage
- `RegWrite_wb`, `MemWrite_mem` - Write enable signals
- `alu_res_wb` - ALU results

## Performance Metrics

### Compression Ratio
- Baseline instruction memory usage: 32 bits per instruction
- Compressed instruction memory usage: Variable (8-16 bits typical)
- Memory savings: Up to 50-75% depending on instruction mix

### Timing Impact
- Decompression latency: 1 cycle (parallel with fetch)
- No performance penalty vs. baseline processor
- Same CPI (Cycles Per Instruction) as baseline

## Known Limitations
1. **Translation table size** - Limited by hardware resources
2. **Compression scope** - Not all instructions may compress equally
3. **Debugging complexity** - Must trace both compressed and expanded forms
4. **Memory model** - Simplified decompression for POC purposes

## Future Improvements
1. **Dynamic compression** - Adaptive compression based on instruction patterns
2. **Larger translation tables** - Support more unique compressed codes
3. **Multi-level compression** - Hierarchical compression schemes
4. **Branch prediction** - Optimize compressed branch instructions
5. **Performance counters** - Track decompression efficiency metrics
6. **Error detection** - Add CRC or parity for compressed instructions

## Troubleshooting

### Common Issues
- **Translation table not loaded** - Check `translation_table.txt` path in decompression_module.sv
- **Compressed codes not found** - Verify `final_code.txt` matches translation table entries
- **Decompression failures** - Check for invalid or unmapped compressed codes
- **Pipeline stalls** - Ensure decompression completes within timing constraints

### Debug Steps
1. Run `simple_decompression_test.sv` to isolate decompression module
2. Verify translation table loads correctly at simulation start
3. Check waveforms for decompression_module signals
4. Compare decompressed output with expected full instructions
5. Use simulation log (`simulation_log.txt`) for detailed trace

## Comparison with Baseline

| Feature | Baseline | Decompressor |
|---------|----------|-------------|
| Instruction Width | 32 bits | Variable (compressed) |
| Instruction Memory | Direct access | Via decompression |
| Pipeline Stages | 5 | 5 + decompression |
| Code Density | Standard | High (2-4x) |
| Complexity | Low | Medium |
| Power Consumption | Baseline | Slightly higher |

## References
- Baseline processor documentation: `../Procesador_Baseline/README.md`
- Compression system: `../Sistema_Compresor/Readme.md`
- Original ARM32 instruction set (simplified subset)
