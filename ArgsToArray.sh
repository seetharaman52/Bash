#!/bin/bash

## Args to Array ##
function args_disp(){
    args=("$@")
    echo ${args[@]}
}
args_disp 1 2 3 4 5
