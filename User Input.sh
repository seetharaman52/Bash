#!bin/bash
## Getting user input ##
declare -a arr
for ((i=1; i<=3; i++)); do
    read -p "Enter Value $i: " num;
    arr+=("$num")
done
echo ${arr[@]}
