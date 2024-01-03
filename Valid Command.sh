#!/bin/bash

## To check if a command is there are not ##
command=htop
if command -v $command > /dev/null; then
    echo "Yes!"
fi
