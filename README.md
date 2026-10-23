# Script: `resumen.sh`
Este script analiza datos de inventario en archivos CSVs, muestras cuantas filas de datos tiene y en que posición y cual fila termina en ','. Además, cuenta cuantas filas por bodegas hay. Adicionalmente, para evitar reproceso, tiene unos filtros iniciales que indica si se está indicando el archivo a analizar y si el archivo a analizar es un archivo regular.

## Requisitos:
- `Bash`: para poder ejecutar el script
- `archivo.csv`: requiere que el archivo a analizar sea un CSV para que pueda hacer el análisis.

## Uso:
Para utilizar el script se debe escribir el siguiente prompt, donde `inventario.csv` puede ser cualquier archivo CSV.  
```bash
bash resumen.sh inventario.csv
```
Output:
```bash
Fila total de datos: 10
Filas con cantidad vacía:
6:2026-10-05,Bodega B,Laptop,
Filas por Bodegas en inventario.csv:
      4 Bodega A
      3 Bodega C
      3 Bodega B
```
NOTA: se debe revisar la estructura del CSV para que coincida que la segunda columna corresponde a Bodegas, de lo contrario va arrojar información que noi corresponde a esta etiqueta.

Adicionalmente, se puede guardar el resultado y los errores en los archivos correspondientes con este prompt:

```bash
bash resumen.sh ~/practica/inventario.csv > reporte.txt 2> errores.txt
```
Así, se tendrían los archivos de resultados y el historial de errores.

## Códigos de Salida:
`exit 0`: Cuando el script funciona sin errores
`exit 1`: Cuando no se escribe el archivo a analizar
`exit 2`: Se dispara solo si el archivo no es regular o si no existe.

## Archivos Ignorados:
Para evitar que Git siga y los suba los archivos que no queremos en el repositorio, se crea el archivo `.gitignore` con las siguientes reglas:
```bash
reporte.txt
errores.txt
salida/ # Este no se usa por el script, pero se usa para pruebas.
```
