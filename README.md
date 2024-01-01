## Bash Scripts Repository

This repository contains a collection of Bash scripts for various purposes. The scripts cover a range of topics and basic operations.

## How to Use

Each script is self-contained. Simply run them using the Bash interpreter:

```bash
./script_name.sh
```
## Basics

```bash
#!/bin/bash

## Variations of Forloops ##
<<comment
for i in $(seq 0 2 10); do
   echo $i
done

for i in {1..10..2}; do
    echo $i
done

for ((i=1; i<=10; i++)); do
    echo $i
done
comment


## Illustration of array ##
<<comment
declare -a arr=("A" "B" "C")
echo -e "\nElements in array: ${arr[@]}\n"
echo -e "Length of array: ${#arr[@]}\n"
unset arr[0]
echo -e "Elements in array after unset: ${arr[@]}\n"
echo -e "Length of array after unset: ${#arr[@]}\n"
arr[0]="Z"
echo -e "After adding an element at position 0: ${arr[@]}\n"
arr+=("D" "E")
echo -e "After adding new elements: ${arr[@]}\n"
comment

## Slicing in Array ##
<<comment
declare -a arr=({1..10})
echo -e "\nArray: ${arr[@]}\n"
echo -e "After slicing from 0 to 5: ${arr[@]:0:5}\n"
echo -e "After slicing from end (last 3): ${arr[@]: -3}\n"
echo -e "From the last 4, slice first 2: ${arr[@]: -4:2}\n"
comment

# Example of process similar to "ls" but not exactly
<<comment
for file in /home/seetharaman/Downloads/*; do
    echo -e "$(basename "$file")"
done
comment

# Finding odd or even
<<comment
declare -a arr=({1..10})
for num in ${arr[@]}; do
    if (($num % 2 == 0)); then
        echo $num
    fi
done
comment

# Reading lines from a file
<<comment
while IFS= read -r line; do
    echo "Line: $line"
done < $(pwd)/inputfile.txt
comment

# Getting user input
<<comment
declare -a arr
for ((i=1; i<=3; i++)); do
    read -p "Enter Value $i: " num;
    arr+=("$num")
done
echo ${arr[@]}
comment


