# Proyecto de Aplicación - Sistema Compresor/Descompresor de Instrucciones Aplicado a Procesador (POC)

Repositorio del proyecto de prueba de concepto para Proyecto de Aplicación de Ingeniería en Computadores.  
**Jose Antonio Espinoza Chaves | 2019083698**

## Descripción General

Este proyecto implementa un sistema completo de compresión/descompresión de instrucciones aplicado a procesadores ARM32. El sistema demuestra mejoras significativas en el ancho de banda de memoria de instrucciones mediante la compresión basada en tokens, logrando una reducción del 56.2% en el ancho de banda y una mejora del 63.3% en CPI cuando se considera la carga paralela de tokens.

## Estructura del Proyecto

### 1. Sistema_Compresor/
Sistema de compresión de instrucciones que convierte código ensamblador ARM32 en instrucciones comprimidas basadas en tokens.

**Características:**
- Compilación de ensamblador a binario con gestión de riesgos
- Detección automática de patrones repetidos
- Generación de tabla de traducción
- Compresión de ~70% en tamaño de código

### 2. Procesador_Baseline/
Procesador ARM32 de referencia sin compresión, usado como línea base para comparaciones de rendimiento.

**Características:**
- Pipeline de 5 etapas (IF, ID, EX, MEM, WB)
- Memoria de instrucciones de 400 palabras (32-bit)
- Memoria de datos de 1024 palabras (32-bit)
- 16 registros de propósito general
- Monitoreo completo de métricas de rendimiento

### 3. Procesador_Descompresor/
Procesador ARM32 mejorado con módulo de descompresión integrado en hardware.

**Características:**
- Pipeline de 5 etapas con etapa de descompresión
- Descompresión en tiempo real usando tabla de traducción
- Soporte para instrucciones de 8-bit (tokens) y 32-bit (completas)
- Métricas optimizadas que simulan carga paralela de tokens
- Reducción significativa en ancho de banda de memoria

### 4. Sistema_Descompresor/
Módulo standalone de descompresión para verificación y pruebas independientes.

## Script de Comparación Automática

### `run_full_comparison.py`

Script principal que orquesta el flujo completo de comparación:

```bash
python run_full_comparison.py
```

**Flujo de trabajo:**
1. **Compresión**: Ejecuta el sistema compresor sobre las instrucciones de entrada
2. **Preparación Baseline**: Convierte instrucciones a formato hexadecimal para el procesador baseline
3. **Preparación Descompresor**: Copia instrucciones comprimidas y tabla de traducción
4. **Simulación**: Ejecuta ambos procesadores en ModelSim
5. **Recolección de Métricas**: Extrae métricas de rendimiento de ambas simulaciones
6. **Generación de Reporte**: Crea PDF con gráficos comparativos y análisis detallado

**Salida:**
- `comparison_report.pdf` - Reporte de 6 páginas con:
  - Página 1: Título y resumen ejecutivo
  - Página 2: Comparación de rendimiento (ciclos, instrucciones, CPI, IPC)
  - Página 3: Eficiencia del pipeline (utilización, throughput, operaciones ALU)
  - Página 4: Rendimiento de memoria (ancho de banda de instrucciones)
  - Página 5: Métricas optimizadas (fetch paralelo de tokens)
  - Página 6: Tabla detallada de métricas (Baseline vs Optimizado)

## Resultados Clave

### Compresión
- **Ratio de compresión**: 69.89%
- **Instrucciones originales**: 362
- **Instrucciones comprimidas**: 253 tokens + 109 instrucciones completas

### Ancho de Banda de Memoria
- **Baseline**: 25.05 bits/ciclo
- **Descompresor**: 10.98 bits/ciclo
- **Reducción**: 56.2%

### Rendimiento Optimizado (Fetch Paralelo)
- **CPI Baseline**: 4.254
- **CPI Optimizado**: 1.559
- **Mejora**: 63.3%
- **Speedup de Fetch**: 5.24x

### IPC (Instructions Per Cycle)
- **Baseline**: 0.235
- **Optimizado**: 0.641
- **Mejora**: 173%

## Requisitos del Sistema

### Software
- **ModelSim**: Para simulación de procesadores SystemVerilog
- **Python 3.13+**: Para scripts de compresión y comparación
- **Paquetes Python**:
  ```bash
  pip install matplotlib numpy
  ```

### Hardware
- Procesador con soporte para Python 3.13
- 4GB RAM mínimo (8GB recomendado)
- 500MB espacio en disco

## Uso Rápido

### Comparación Completa
```bash
# Ejecutar comparación completa y generar reporte
python run_full_comparison.py
```

### Solo Compresión
```bash
cd Sistema_Compresor
python run_system.py
```

### Solo Simulación Baseline
```bash
cd Procesador_Baseline
vsim -c -do run_test.do
```

### Solo Simulación Descompresor
```bash
cd Procesador_Descompresor
vsim -c -do run_test.do
```

## Métricas Monitoreadas

### Métricas Básicas
- Total de ciclos de ejecución
- Total de instrucciones ejecutadas
- CPI (Cycles Per Instruction)
- IPC (Instructions Per Cycle)
- Latencia de ejecución

### Métricas de Pipeline
- Utilización del pipeline
- Throughput de instrucciones
- Operaciones ALU
- NOPs ejecutados

### Métricas de Memoria
- Ancho de banda de memoria de instrucciones
- Ancho de banda de memoria de datos
- Total de accesos a memoria
- Fetches de instrucciones

### Métricas de Compresión (Descompresor)
- Ratio de compresión
- Instrucciones descomprimidas
- Eficiencia de memoria
- Ahorro en fetch de instrucciones

### Métricas Optimizadas (Descompresor)
- Ciclos efectivos de fetch
- CPI optimizado
- IPC optimizado
- Speedup de fetch
- Latencia de ejecución optimizada

## Modelo de Optimización

El modelo optimizado asume que el procesador puede cargar múltiples tokens (hasta 4) en una sola operación de fetch de 32 bits:

```
Fetch de 32 bits = 4 tokens de 8 bits
Ciclos ahorrados = Fetches secuenciales - Fetches paralelos efectivos
CPI optimizado = (Total ciclos - Ciclos ahorrados) / Total instrucciones
```

Este modelo representa el rendimiento teórico si el procesador implementara fetch paralelo de tokens, mostrando el potencial real de la compresión.

## Archivos de Entrada/Salida

### Entrada
- `Sistema_Compresor/Input_files/binary.txt` - Instrucciones binarias originales

### Salidas Intermedias
- `Sistema_Compresor/Output_files/final_code.txt` - Código comprimido
- `Sistema_Compresor/Output_files/translation_table.txt` - Tabla de traducción
- `Procesador_Baseline/instructions.txt` - Instrucciones hexadecimales para baseline
- `Procesador_Baseline/performance_metrics.txt` - Métricas del baseline
- `Procesador_Descompresor/performance_metrics.txt` - Métricas del descompresor

### Salida Final
- `comparison_report.pdf` - Reporte completo con gráficos y análisis

## Notas de Implementación

### Descompresión en Hardware
El módulo de descompresión está implementado como un circuito combinacional que:
1. Lee la tabla de traducción al inicio
2. Detecta si la instrucción es un token (8-bit) o instrucción completa (32-bit)
3. Traduce tokens a instrucciones completas usando lookup table
4. Pasa instrucciones completas sin modificar

### Gestión de Codificación
El script de comparación maneja correctamente la codificación UTF-8 y errores de decodificación de ModelSim para evitar excepciones durante la simulación.

### Colores en Reporte
- **Verde**: Mejora respecto al baseline
- **Rojo**: Regresión respecto al baseline
- **Gris**: Sin cambio o métrica neutral

## Contacto

**Jose Antonio Espinoza Chaves**  
Estudiante de Ingeniería en Computadores  
Tecnológico de Costa Rica  
Carné: 2019083698

---

*Proyecto de Aplicación - II Semestre 2025*