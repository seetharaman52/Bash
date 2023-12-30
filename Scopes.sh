#! /bin/bash

var1=5

Add () {
    local var1=$(($var1 + 10))
    echo $var1
}

Add

#var2=$var1

echo $var1
