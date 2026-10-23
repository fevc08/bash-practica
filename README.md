# __Analiza Script__
Este scrip analiza datos de inventario en archivos CSVs, determinando cuantas filas de datos tiene, en que posición y cual fila falta un dato, además de la cantidad de Bodegas por tipo existen. Adicionalmente, para evitar reproceso, tiene unos filtros iniciales que indica si se está indicando el archivo a analizar y otro determinando si el archivo a analizar es un CSV.

## __Requisitos:__
- `Bash`: para poder ejecutar el script
- `archivo.csv`: requiere que el archivo a analizar sea un CSV para que pueda hacer el análisis.

## __Uso:__
Para utilizar el script se debe escribir el siguiente prompt, donde `inventario.csv` puede ser cualquier archivo CSV.  
```bash
bash resumen.sh inventario.csv
```
Output:
```bash
Fila total de datos: 10
Filas con cantidad vacía:
6:2026-10-05,Bodega B,Laptop,
Filas por Bodegas en ~/practica/inventario.csv:
      4 Bodega A
      3 Bodega C
      3 Bodega B
```
NOTA: se debe revisar la estructura del CSV para que coincida que la segunda columna corresponde a Bodegas, de lo contrario va arrojar información que noi corresponde a esta etiqueta.

Adicionalmente, se puede gusradar el resultado y los errores en los archivos correspondientes con este prompt:

```bash
bash resumen.sh ~/practica/inventario.csv > reporte.txt 2> errores.txt
```
Así, se tendrían los archivos de resultados y el historial de errores.

## __Códigos de Salida:__
`exit 0`: Cuando el script funciona sin errores
`exit 1`: Cuando no se escribe el archivo a analizar
`exit 2`: Cuando el archivo escrito no es el apropiado o no existe.

## **Archivos Ignorados:**
Para evitar que se muestre los resultados y errores se crea el archivo `.gitignore` con las siguientes reglas:
```bash
reporte.txt
errores.txt
salida/
```
