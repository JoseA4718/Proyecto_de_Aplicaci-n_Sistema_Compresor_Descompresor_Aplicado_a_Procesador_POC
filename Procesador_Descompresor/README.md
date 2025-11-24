# Procesador ARM32 con Descompresor

## Descripción General
Este es un procesador ARM32 mejorado con capacidades integradas de descompresión de instrucciones. Extiende el procesador baseline agregando un módulo de descompresión en hardware que traduce instrucciones comprimidas (tokens de 8 bits) a instrucciones ARM32 completas de 32 bits en tiempo real.

## Arquitectura
- **Pipeline**: 5 etapas (IF, ID, EX, MEM, WB)
- **Memoria de Instrucciones**: 400 palabras almacenando instrucciones **comprimidas**
- **Memoria de Datos**: 1024 palabras (32-bit cada una)
- **Archivo de Registros**: 16 registros (R0-R15)
- **Operaciones ALU**: ADD, SUB, MUL, DIV, MOD, CMP, TEST
- **Módulo de Descompresión**: Descompresión en tiempo real usando tabla de traducción


## Módulos Principales

### Procesador Central
- `pipeline_processor.sv` - Procesador principal con pipeline de 5 etapas
- `control_unit.sv` - Decodificador de instrucciones y generador de señales de control
- `alu.sv` - Unidad Aritmético-Lógica
- `register_file.sv` - Archivo de 16 registros con puertos de lectura/escritura

### Sistema de Descompresión
- `decompression_module.sv` - **Módulo de descompresión en hardware**
  - Tabla de traducción interna (256 entradas)
  - Lógica combinacional para traducción instantánea
  - Detecta automáticamente tokens vs instrucciones completas
  - Latencia de 1 ciclo
- `translation_table.txt` - **Mapeo token → instrucción completa**
- `final_code.txt` - **Código comprimido (entrada del procesador)**

### Sistema de Memoria
- `memory_controller.sv` - Controlador de memoria **con integración de descompresión**
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
1. **Fetch**: PC lee de memoria de instrucciones comprimidas
2. **Detección**: Módulo detecta si es token (8-bit) o instrucción completa (32-bit)
   - Token: `compressed_instruction[31:8] == 24'h000000`
   - Completa: Cualquier otro patrón
3. **Traducción**: Si es token, busca en tabla de traducción
4. **Salida**: Instrucción completa de 32 bits va al pipeline

### Ejemplo de Traducción
```systemverilog
// Entrada comprimida
32'h00000001  // Token 01 (8 bits en formato 32-bit)

// Tabla de traducción
translation_table[1] = 32'hB0200005  // SUM R2, R0, #5

// Salida descomprimida
32'hB0200005  // Instrucción completa
```

## Testbench y Métricas

### `enhanced_processor_tb.sv`
Testbench que monitorea métricas de rendimiento incluyendo métricas optimizadas:

**Métricas Básicas (18):**
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

**Métricas de Compresión:**
- `compression_ratio` - Porcentaje de compresión logrado
- `decompressed_instructions` - Instrucciones descomprimidas desde tokens
- `memory_efficiency` - Eficiencia vs baseline
- `instruction_fetch_savings` - Ahorro en fetches

**Métricas Optimizadas:**
- `effective_fetch_cycles` - Ciclos efectivos asumiendo fetch paralelo de tokens
- `optimized_cpi` - CPI considerando fetch paralelo 
- `optimized_ipc` - IPC mejorado 
- `fetch_speedup` - Factor de aceleración 
- `optimized_execution_latency` - Latencia optimizada

**Archivo de Salida:**
- `performance_metrics.txt` - **29 métricas** en formato clave=valor

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
- `final_code.txt` - **Código comprimido** (tokens de 8-bit + instrucciones de 32-bit)
- `translation_table.txt` - **Tabla de traducción** token → instrucción

Formato de `final_code.txt`:
```
00000001    # Token 01 (representa B0200005)
00000002    # Token 02 (representa B0400003)
80200400    # Instrucción completa (32-bit)
00000003    # Token 03
60000000    # Instrucción completa (JR R0)
```

Formato de `translation_table.txt`:
```
B0200005    # Token 01
B0400003    # Token 02
80200400    # Token 03
...
```

### Archivos de Salida
- `performance_metrics.txt` - **29 métricas** de rendimiento (vs 18 en baseline)
- `simulation_log.txt` - Log de simulación (si se habilita)

## Script de Simulación

### `run_test.do`
Script de ModelSim que:
1. Crea biblioteca de trabajo
2. Compila todos los módulos SystemVerilog
3. **Compila módulo de descompresión**
4. Ejecuta el testbench
5. Genera archivo de métricas **con métricas optimizadas**
6. Sale automáticamente

### `test_decompression.do` (ADICIONAL)
Script para probar solo el módulo de descompresión:
```bash
vsim -c -do test_decompression.do
```

### Limitaciones Actuales

 **Implementación Secuencial**
- Fetch actual: 1 token = 1 ciclo
- CPI actual igual al baseline 
- Overhead por fetch individual de tokens

### Solución Propuesta

 **Fetch Paralelo de Tokens**
- Implementar fetch de 32 bits con 4 tokens
- Detector de límites de tokens
- Buffer de tokens

## Estructura de Archivos

```
Procesador_Descompresor/
├── pipeline_processor.sv         # Procesador principal
├── control_unit.sv              # Unidad de control
├── alu.sv                       # ALU
├── register_file.sv             # Archivo de registros
├── decompression_module.sv   # MÓDULO DE DESCOMPRESIÓN
├── memory_controller.sv         # Controlador con integración de descompresión
├── dmem_ram.sv                 # Memoria de datos
├── imem.sv                     # Memoria de instrucciones
├── memory_access.sv            # Wrapper de acceso
├── segment_*.sv                # Registros de pipeline
├── pc_register.sv              # Contador de programa
├── adder.sv                    # Sumador
├── mux_*.sv                    # Multiplexores
├── sign_extend.sv              # Extensión de signo
├── jump_unit.sv                # Unidad de saltos
├── enhanced_processor_tb.sv # Testbench con métricas optimizadas
├── simple_decompression_test.sv # Test standalone del módulo
├── run_test.do                 # Script principal de ModelSim
├── test_decompression.do    # Script de prueba de descompresión
├── final_code.txt           # CÓDIGO COMPRIMIDO (entrada)
├── translation_table.txt    # TABLA DE TRADUCCIÓN (entrada)
└── performance_metrics.txt     # 29 métricas (salida)
```


*Procesador con Descompresión - Sistema de Compresión de Instrucciones*  
*Proyecto de Aplicación - II Semestre 2025*
