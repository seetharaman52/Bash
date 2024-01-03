#!/bin/bash
## Function name can viewed with $FUNCNAME ##
f1(){
    VAR=1
    local LIS=2
    echo $FUNCNAME
}
f1
echo $VAR
echo $LIS # Prints nothing as it is local
