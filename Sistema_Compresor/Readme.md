# Sistema Compresor de Instrucciones ARM32

Este sistema procesa y comprime instrucciones en lenguaje ensamblador ARM32 mediante un pipeline que incluye compilación, gestión de riesgos, conversión binaria y compresión basada en tokens.

## Descripción General

El sistema compresor transforma código ensamblador ARM32 en una representación comprimida usando tokens de 8 bits para instrucciones frecuentes, logrando un ratio de compresión de aproximadamente 70%. El sistema genera tanto el código comprimido como una tabla de traducción que permite la descompresión en hardware.

## Arquitectura del Sistema

```
test.txt (Ensamblador)
    ↓
[compiler.py] → binary.txt (Binario con NOPs)
    ↓
[bin_hex.py] → new_binary_file.txt (Hexadecimal)
    ↓
[tokens.py] → code_tokens.txt (Con tokens temporales)
    ↓
[transform.py] → final_code.txt (Comprimido final)
                 translation_table.txt (Tabla de traducción)
```

## Módulos del Sistema

### 1. `compiler.py` - Compilador Principal
**Función:** Convierte código ensamblador ARM32 a binario con gestión automática de riesgos.

**Características:**
- Compilación de instrucciones ARM32
- Detección de dependencias de datos (RAW hazards)
- Inserción automática de NOPs para resolver riesgos
- Generación de código binario de 32 bits

**Entrada:** `Input_files/test.txt` (código ensamblador)

**Salida:** `Input_files/binary.txt` (código binario con NOPs)

**Instrucciones Soportadas:**
- `SUMI Rd, Rs, #imm` - Suma inmediata
- `SUM Rd, Rs, Rt` - Suma de registros
- `SUB Rd, Rs, Rt` - Resta de registros
- `MUL Rd, Rs, Rt` - Multiplicación
- `DIV Rd, Rs, Rt` - División
- `NOP` - Sin operación
- `JR Rs` - Salto a registro

**Ejemplo de Entrada:**
```assembly
SUMI R2, R0, 5
SUMI R4, R0, 3
SUM R2, R2, R4
JR R0
```

**Ejemplo de Salida:**
```
10110000001000000000000000000101  # SUMI R2, R0, #5
10110000010000000000000000000011  # SUMI R4, R0, #3
00000000000000000000000000000000  # NOP (inserción automática)
00000000000000000000000000000000  # NOP
00000000000000000000000000000000  # NOP
10000000001000000000010000000000  # SUM R2, R2, R4
01100000000000000000000000000000  # JR R0
```

---

### 2. `bin_hex.py` - Conversor Binario a Hexadecimal
**Función:** Convierte representación binaria a hexadecimal para facilitar procesamiento.

**Entrada:** `Input_files/binary.txt`

**Salida:** `Input_files/new_binary_file.txt`

**Ejemplo:**
```
Binario:  10110000001000000000000000000101
Hex:      B0200005
```

---

### 3. `tokens.py` - Detector y Compresor de Patrones
**Función:** Detecta instrucciones repetidas y las reemplaza con tokens temporales.

**Características:**
- Análisis de frecuencia de instrucciones
- Identificación de patrones repetidos
- Asignación de tokens temporales (A00001, A00002, etc.)
- Cálculo de ratio de compresión

**Entrada:** `Input_files/new_binary_file.txt`

**Salida:** `Input_files/code_tokens.txt`

**Algoritmo:**
1. Contar frecuencia de cada instrucción única
2. Ordenar por frecuencia descendente
3. Asignar tokens a instrucciones frecuentes
4. Reemplazar ocurrencias con tokens

**Ejemplo:**
```
Original (266 instrucciones):
B0200005
B0400003
80200400
B0200005  ← Repetición
B0400003  ← Repetición

Con tokens (253 tokens + 109 instrucciones):
A00001    ← Token para B0200005
A00002    ← Token para B0400003
80200400  ← Primera ocurrencia
A00001    ← Token para B0200005
A00002    ← Token para B0400003
```

---

### 4. `transform.py` - Transformador Final
**Función:** Convierte tokens temporales a tokens de 8 bits y genera tabla de traducción.

**Características:**
- Conversión de tokens temporales (A00001) a tokens finales (01)
- Generación de tabla de traducción
- Validación de integridad
- Estadísticas de compresión

**Entrada:** `Input_files/code_tokens.txt`

**Salidas:**
- `Output_files/final_code.txt` - Código final comprimido
- `Output_files/translation_table.txt` - Tabla token → instrucción

**Formato de Salida:**

`final_code.txt`:
```
00000001  # Token 01 (8 bits, representa B0200005)
00000002  # Token 02 (8 bits, representa B0400003)
80200400  # Instrucción completa (32 bits)
00000001  # Token 01
60000000  # Instrucción completa (JR R0)
```

`translation_table.txt`:
```
B0200005  ← Token 01
B0400003  ← Token 02
80200400  ← Token 03
...
```

**Algoritmo:**
1. Leer código con tokens temporales
2. Crear tabla de traducción (mapeo token → instrucción)
3. Reemplazar tokens temporales con tokens finales de 8 bits
4. Mantener instrucciones completas sin cambios
5. Escribir código final y tabla de traducción

---

## Scripts de Ejecución

### Script Principal: `run_system.py`
Ejecuta automáticamente todo el pipeline de compresión:

```bash
python run_system.py
```

**Flujo:**
1. Ejecuta `compiler.py`
2. Ejecuta `bin_hex.py`
3. Ejecuta `tokens.py`
4. Ejecuta `transform.py`
5. Muestra estadísticas finales

### Script ARM32: `run_arm32_system.py`
Pipeline específico para código ARM32 con módulos optimizados:

```bash
python run_arm32_system.py
```

Usa versiones específicas de ARM32:
- `arm32_compiler.py`
- `arm32_tokens.py`
- `arm32_transform.py`

---

## Estructura de Directorios

```
Sistema_Compresor/
├── compiler.py              # Compilador principal
├── bin_hex.py              # Conversor binario-hex
├── tokens.py               # Detector de patrones
├── transform.py            # Transformador final
├── run_system.py           # ⭐ Script de ejecución completa
├── arm32_compiler.py       # Compilador ARM32 específico
├── arm32_tokens.py         # Tokenizador ARM32
├── arm32_transform.py      # Transformador ARM32
├── run_arm32_system.py     # Script ARM32
├── Input_files/            # Archivos de entrada
│   ├── test.txt           # Código ensamblador (entrada)
│   ├── binary.txt         # Salida del compilador
│   ├── new_binary_file.txt # Salida del conversor
│   └── code_tokens.txt    # Salida del tokenizador
└── Output_files/           # ⭐ Archivos finales
    ├── final_code.txt     # ⭐ Código comprimido
    └── translation_table.txt # ⭐ Tabla de traducción
```

---

## Resultados de Compresión

### Métricas Típicas
- **Instrucciones originales**: 362 (32-bit cada una)
- **Instrucciones comprimidas**: 253 tokens (8-bit) + 109 completas (32-bit)
- **Ratio de compresión**: ~69.89%
- **Ahorro de bits**: (362 × 32) - (253 × 8 + 109 × 32) = 7,568 bits

### Cálculo de Ratio
```
Tamaño original = 362 instrucciones × 32 bits = 11,584 bits
Tamaño comprimido = (253 tokens × 8 bits) + (109 instrucciones × 32 bits)
                  = 2,024 bits + 3,488 bits = 5,512 bits
Ratio = (5,512 / 11,584) × 100 = 47.6% del tamaño original
Compresión = 100 - 47.6 = 52.4% de reducción
```

---

## Integración con Procesadores

### Uso en Procesador Baseline
El procesador baseline usa instrucciones hexadecimales sin comprimir:

```bash
# Generar instrucciones para baseline
python bin_hex.py
# Copiar Input_files/new_binary_file.txt → Procesador_Baseline/instructions.txt
```

### Uso en Procesador Descompresor
El procesador con descompresión usa el código comprimido:

```bash
# Generar código comprimido
python run_system.py
# Copiar Output_files/final_code.txt → Procesador_Descompresor/final_code.txt
# Copiar Output_files/translation_table.txt → Procesador_Descompresor/translation_table.txt
```

### Uso en Comparación Automática
El script `run_full_comparison.py` automatiza todo:

```bash
cd ..
python run_full_comparison.py
```

Este script:
1. Ejecuta el sistema compresor
2. Prepara instrucciones para ambos procesadores
3. Ejecuta simulaciones
4. Genera reporte PDF comparativo

---

## Formato de Archivos

### `test.txt` - Código Ensamblador
```assembly
SUMI R2, R0, 5    # Cargar 5 en R2
SUMI R4, R0, 3    # Cargar 3 en R4
SUM R2, R2, R4    # R2 = R2 + R4
JR R0             # Saltar a R0 (fin)
```

### `binary.txt` - Código Binario
```
10110000001000000000000000000101
10110000010000000000000000000011
10000000001000000000010000000000
01100000000000000000000000000000
```

### `new_binary_file.txt` - Código Hexadecimal
```
B0200005
B0400003
80200400
60000000
```

### `code_tokens.txt` - Con Tokens Temporales
```
A00001
A00002
80200400
60000000
```

### `final_code.txt` - Código Comprimido Final
```
00000001
00000002
80200400
60000000
```

### `translation_table.txt` - Tabla de Traducción
```
B0200005
B0400003
```

---

## Validación y Verificación

### Verificación de Compresión
```python
# Contar tokens vs instrucciones completas
tokens = sum(1 for line in final_code if len(line.strip()) == 8)
full_instr = sum(1 for line in final_code if len(line.strip()) == 32)
print(f"Tokens: {tokens}, Completas: {full_instr}")
```

### Verificación de Descompresión
```python
# Verificar que todos los tokens tienen traducción
for token_line in final_code:
    if len(token_line) == 8:
        token_num = int(token_line, 16)
        assert token_num <= len(translation_table)
```

---

## Optimizaciones y Mejoras

### Optimizaciones Actuales
- ✅ Detección automática de patrones repetidos
- ✅ Inserción automática de NOPs para riesgos
- ✅ Tokens de 8 bits (256 instrucciones únicas)
- ✅ Preservación de instrucciones raras sin comprimir

### Mejoras Futuras
- 🔲 Compresión de inmediatos pequeños
- 🔲 Tokens de tamaño variable (4, 8, 16 bits)
- 🔲 Compresión de secuencias de instrucciones
- 🔲 Tabla de traducción dinámica
- 🔲 Análisis de profiling para optimización

---

## Notas de Implementación

### Manejo de NOPs
El compilador inserta NOPs automáticamente para resolver dependencias de datos (RAW hazards). Estos NOPs también pueden ser comprimidos si aparecen frecuentemente.

### Tokens vs Instrucciones Completas
- **Token**: 8 bits (00000001 - 000000FF)
- **Instrucción completa**: 32 bits (xxxxxxxx)
- El módulo de descompresión detecta automáticamente el tipo basándose en los 24 bits superiores

### Límite de Tokens
- Máximo 256 instrucciones únicas pueden ser tokenizadas (8 bits = 2^8)
- Instrucciones adicionales se mantienen sin comprimir

---

## Uso en Proyectos

### Para Generar Código Comprimido
```bash
# 1. Escribir código ensamblador en Input_files/test.txt
# 2. Ejecutar sistema completo
python run_system.py

# 3. Verificar salidas
cat Output_files/final_code.txt
cat Output_files/translation_table.txt
```

### Para Integrar en Procesador
```systemverilog
// Módulo de descompresión lee translation_table.txt
// Y traduce tokens del formato 0x000000XX a instrucciones completas
decompression_module decomp (
    .compressed_instruction(instr_from_memory),
    .decompressed_instruction(instr_to_pipeline)
);
```

---

*Sistema Compresor de Instrucciones ARM32*  
*Proyecto de Aplicación - II Semestre 2025*
