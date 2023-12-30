#! /bin/bash
myfun()
{
    local sum=$(($1+$2))
    echo -e -n "Their sum is:" $sum"\n"
}

echo -n 'Enter a : '
read a
echo -n 'Enter b : '
read b
myfun a b