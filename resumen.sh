#!/usr/bin/env bash
if [ "$#" -eq 0 ]; then
  echo "Uso: $0 archivo.csv" >&2
  exit 1
fi

archivo="$1"

if [ ! -f "$archivo" ]; then
  echo "El archivo $archivo no existe o no es un archivo regular" >&2
  exit 2
fi

filas=$(tail -n +2 "$archivo" | grep -c '')
echo "Fila total de datos: $filas"

vacia=$(grep -n ',$' "$archivo")
echo "Filas con cantidad vacía:"
echo "$vacia"

bodegas=$(tail -n +2 "$archivo" | cut -d, -f2 | sort | uniq -c | sort -rn)
echo "Filas por Bodegas en $archivo:"
echo "$bodegas"
