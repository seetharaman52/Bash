#!/bin/bash
## Slicing in Array ##
declare -a arr=({1..10})
echo -e "\nArray: ${arr[@]}\n"
echo -e "After slicing from 0 to 5: ${arr[@]:0:5}\n"
echo -e "After slicing from end (last 3): ${arr[@]: -3}\n"
echo -e "From the last 4, slice first 2: ${arr[@]: -4:2}\n"
