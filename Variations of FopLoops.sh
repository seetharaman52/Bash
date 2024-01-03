#!/bin/bash

## Variations of Forloops ##
for i in $(seq 0 2 10); do
   echo $i
done

for i in {1..10..2}; do
    echo $i
done

for ((i=1; i<=10; i++)); do
    echo $i
done
