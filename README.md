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
for i in $(seq 0 2 10); do
   echo $i
done

for i in {1..10..2}; do
    echo $i
done

for ((i=1; i<=10; i++)); do
    echo $i
done


## Illustration of array ##
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

## Slicing in Array ##
declare -a arr=({1..10})
echo -e "\nArray: ${arr[@]}\n"
echo -e "After slicing from 0 to 5: ${arr[@]:0:5}\n"
echo -e "After slicing from end (last 3): ${arr[@]: -3}\n"
echo -e "From the last 4, slice first 2: ${arr[@]: -4:2}\n"

## Example of process similar to "ls" but not exactly ##
for file in /home/seetharaman/Downloads/*; do
    echo -e "$(basename "$file")"
done

## Finding odd or even ##
declare -a arr=({1..10})
for num in ${arr[@]}; do
    if (($num % 2 == 0)); then
        echo $num
    fi
done

## Reading lines from a file ##
while IFS= read -r line; do
    echo "Line: $line"
done < $(pwd)/inputfile.txt

## Getting user input ##
declare -a arr
for ((i=1; i<=3; i++)); do
    read -p "Enter Value $i: " num;
    arr+=("$num")
done
echo ${arr[@]}

## Simple while loop ##
while true; do
    read -p "Enter something (type 'exit' to quit): " input

    if [ "$input" == "exit" ]; then
        echo "Exiting the loop."
        break
    fi

    echo "You entered: $input"
done


## Function name can viewed with $FUNCNAME ##
f1(){
    VAR=1
    local LIS=2
    echo $FUNCNAME
}
f1
echo $VAR
echo $LIS # Prints nothing as it is local

## Example of using awk ##
date | awk -F" " '{ print "Day: "$1"" }'
date | awk -F" " '{ print "Date: "$2"" }'
date | awk -F" " '{ print "Month: "$3"" }'
date | awk -F" " '{ print "Year: "$4"" }'
date | awk -F" " '{ print "Time: "$5"" }'
date | awk -F" " '{ print "AM/PM: "$6"" }'
date | awk -F" " '{ print "Standard: "$7"" }'
cat /etc/passwd | awk -F":" '{ print $1 }' | tail -n1

## Example of sed ##
sed -i 's/word1/word2/g' file.txt # Replaces word1 with word2
sed -i 's/\//:/g' file.txt # Replaces "/" with ":"
sed -n '1,10p' $0 # View first 10 lines of this file

f="test1.sh"
cp $0 ./"$f" # Form a Copy of this file in same dir
echo "Formed a file called $f"

## Example of Cut ##
cut -d":" -f1,5 /etc/passwd # Gives $1 and $5
cut -d":" -f1 /etc/passwd # Gives $1

## Just a fun array process ##
# Make a file called food.txt in the same dir and fill some food names

declare -a lunch_options
work_dir=$(dirname "$(readlink -f "${0}")")
food_places="${work_dir}/food.txt"

terminate(){
    local -r msg="${1}"
    local -r code="${2:-150}"
    echo "${msg}" >&2
    exit "${code}"
}

if [[ ! -f "${food_places}" ]]; then
    terminate "Error: $food_places doesn't exist" 150
fi

function fill_array(){
    mapfile -t lunch_options < "${food_places}"
    if [[ "${#lunch_options[@]}" -eq 0 ]]; then
        terminate "Error: No food options left in $(basename "$food_places")"
    fi
}

function update_opt(){
    if [[ "${#lunch_options[@]}" -eq 0 ]]; then
        : > "${food_places}"
    else
        printf "%s\n" "${lunch_options[@]}" > "${food_places}"
    fi
}

fill_array
index=$((RANDOM % "${#lunch_options[@]}"))
echo ${lunch_options[$index]}
unset "lunch_options[${index}]"
update_opt


## To check if a command is there are not ##
command=htop
if command -v $command > /dev/null; then
    echo "Yes!"
fi


