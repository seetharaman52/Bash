#!/bin/bash
#echo -n "Enter a : "
#read a
#echo -n "Enter b : "
#read b
read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
if [[ $a -lt $b ]]; then
    echo "a is smaller than b"
elif [[ $b -gt $a ]]; then
    echo "b is greater than a"
else
    echo "Both are equal"
fi