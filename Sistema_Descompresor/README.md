# Sistema Descompresor de Instrucciones ARM32

Este sistema implementa un módulo de descompresión en hardware (SystemVerilog) que traduce instrucciones comprimidas (tokens de 8 bits) a instrucciones ARM32 completas de 32 bits en tiempo real. El módulo está diseñado para ser integrado en el pipeline del procesador.

## Descripción General

El sistema descompresor es un circuito combinacional que lee una tabla de traducción al inicio y realiza búsquedas instantáneas para convertir tokens comprimidos en instrucciones completas. Opera con latencia de 1 ciclo y es completamente transparente para el resto del procesador.

## Arquitectura del Sistema

```
final_code.txt (Código comprimido)
translation_table.txt (Tabla de traducción)
         ↓
[decompression_module.sv] → Instrucción descomprimida (32-bit)
         ↓
    Pipeline del procesador
```

**Proceso:**
1. Módulo lee `translation_table.txt` al inicio (inicialización)
2. Recibe instrucción comprimida (puede ser token de 8-bit o completa de 32-bit)
3. Detecta tipo de instrucción
4. Si es token: busca en tabla y retorna instrucción completa
5. Si es completa: pasa sin modificar

## Testbench y Verificación

### `tb_decompression_module.sv`
Testbench para verificar el funcionamiento del módulo de descompresión.

**Pruebas Realizadas:**
1. **Traducción de tokens**: Verifica que tokens se traduzcan correctamente
2. **Paso de instrucciones completas**: Verifica que instrucciones completas pasen sin modificar
3. **Casos límite**: Prueba tokens en límites (00, FF)
4. **Secuencias mixtas**: Alterna tokens e instrucciones completas

## Scripts de Ejecución

### Simulación con ModelSim
```bash
# Compilar y simular
vsim -c -do "vlog decompression_module.sv tb_decompression_module.sv; vsim -c tb_decompression_module -do 'run -all; quit'"

# O usar scripts de simulación del procesador que incluyen este módulo
cd ../Procesador_Descompresor
vsim -c -do run_test.do
```

### Verificación Standalone
```bash
# Probar solo el módulo de descompresión
cd ../Procesador_Descompresor
vsim -c -do test_decompression.do
```

## Estructura de Directorios

```
Sistema_Descompresor/
├── decompression_module.sv     # Módulo de descompresión (principal)
├── tb_decompression_module.sv  # Testbench de verificación
├── final_code.txt              # Código comprimido (entrada de prueba)
├── translation_table.txt       # Tabla de traducción (entrada)
├── Decompressor.qpf            # Proyecto Quartus
├── Decompressor.qsf            # Configuración Quartus
├── db/                         # Base de datos Quartus (generado)
├── incremental_db/             # DB incremental Quartus (generado)
├── output_files/               # Archivos de síntesis (generado)
└── simulation/                 # Archivos de simulación (generado)
```

---

*Sistema Descompresor de Instrucciones ARM32*  
*Proyecto de Aplicación - II Semestre 2025*
