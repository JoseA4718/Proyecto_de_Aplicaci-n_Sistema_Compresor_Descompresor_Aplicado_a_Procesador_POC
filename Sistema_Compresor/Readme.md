# Sistema Compresor de Instrucciones
Este sistema procesa y comprime instrucciones en lenguaje ensamblador mediante un pipeline que incluye compilación, gestión de riesgos, conversión binaria y compresión basada en tokens.

## Archivos del Sistema
### 1. compiler.py - Compilador Principal
Convierte código ensamblador a binario con gestión de riesgos (stalls)

Dependencias: Ninguna

Entrada: Input_files/test.txt

Salida: Input_files/binary.txt

### 2. bin_hex.py - Conversor Binario-Hexadecimal
Convierte archivos binarios a hexadecimal

Dependencias: Requiere el archivo de salida de compiler.py

Entrada: Input_files/binary.txt

Salida: Input_files/new_binary_file.txt

### 3. tokens.py - Compresor Basado en Tokens
Detecta patrones repetidos y los reemplaza con tokens

Dependencias: Requiere el archivo de salida de bin_hex.py

Entrada: Input_files/new_binary_file.txt

Salida: Input_files/code_tokens.txt

### 4. correction.py - Transformador Final
Reconstruye el código usando la tabla de traducción

Dependencias: Requiere el archivo de salida de tokens.py

Entrada: Input_files/code_tokens.txt

Salida:
Output_files/final_code.txt
Output_files/traduction_table.txt

## Script de Ejecución Automática

*python run_system.py*

Este script ejecuta automáticamente todos los módulos en el orden correcto.
