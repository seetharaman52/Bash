#!/bin/bash

## The TRAP command ##
trap 'echo "CTRL+C Pressed!"' SIGINT
sleep infinity

## Another example of TRAP (For CTRL + Z, use SIGTSTP) ##
function clean_up(){
    echo -e "\nCTRL +C pressed!\nCleaning up the disk.."
    echo "Successfully cleaned!"
}
echo "Press CTRL + C"
trap clean_up SIGINT
sleep infinity
