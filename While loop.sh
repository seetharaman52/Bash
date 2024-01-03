#!/bin/bash

## Simple while loop ##
while true; do
    read -p "Enter something (type 'exit' to quit): " input

    if [ "$input" == "exit" ]; then
        echo "Exiting the loop."
        break
    fi

    echo "You entered: $input"
done
