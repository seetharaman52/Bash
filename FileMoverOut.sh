#!/bin/bash

for folder in *; do
    if [ -d "$folder" ]; then
        mv "$folder"/* .
    fi
done
echo "Successfull"
