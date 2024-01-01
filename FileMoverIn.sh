#!/bin/bash

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 file1 [file2 ... fileN]"
  exit 1
fi

excluded=$(basename "$0")

for file in "$@"; do
  if [ -f $file ]; then
    if [ "$file" != "$excluded" ]; then
      basename="${file%.*}"
      mkdir $(pwd)/"$basename"
      mv $(pwd)/"$file" $(pwd)/"$basename"
    fi
  fi
done

echo "Organizing files completed."

