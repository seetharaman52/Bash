#!/bin/bash
## Example of process similar to "ls" but not exactly ##
for file in /home/seetharaman/Downloads/*; do
    echo -e "$(basename "$file")"
done
