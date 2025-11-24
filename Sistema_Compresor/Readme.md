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
├── run_system.py           # Script de ejecución completa
├── arm32_compiler.py       # Compilador ARM32 específico
├── arm32_tokens.py         # Tokenizador ARM32
├── arm32_transform.py      # Transformador ARM32
├── run_arm32_system.py     # Script ARM32
├── Input_files/            # Archivos de entrada
│   ├── test.txt           # Código ensamblador (entrada)
│   ├── binary.txt         # Salida del compilador
│   ├── new_binary_file.txt # Salida del conversor
│   └── code_tokens.txt    # Salida del tokenizador
└── Output_files/           # Archivos finales
    ├── final_code.txt     # Código comprimido
    └── translation_table.txt # Tabla de traducción
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

*Sistema Compresor de Instrucciones ARM32*  
*Proyecto de Aplicación - II Semestre 2025*
