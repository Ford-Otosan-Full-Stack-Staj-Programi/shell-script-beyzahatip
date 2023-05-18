#!/bin/bash

# kelime ve klasörü alır
kelimee=$1
dosya_=$2

# dosyaları alır
files=$(find "$dosya_" -type f)

echo "Klasörde '$kelimee' kelimesini içeren dosyalar:"


found=false
for file in $files; do
 
  grep -q "$kelimee" "$file"

  if [ $? -eq 0 ]; then
    
    echo "$file"
    found=true
  fi
done

if ! $found; then
  echo "Klasörde '$kelimee' kelimesini içeren dosya bulunamadı."
fi
