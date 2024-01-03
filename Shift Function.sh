#!/bin/bash

## Shift function ##
function print_args(){
    while [[ $# -gt 0 ]]; do
        echo $1
        shift
    done
}
print_args 1 2 3 4 5
