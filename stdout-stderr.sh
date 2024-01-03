#!/bin/bash

## Stderr : Error reporting ##
# TO indicate error we use >&2 in scripts
# Hide error: 2> /dev/null
# Hide output > /dev/null
msg="Try Again!"
echo "Error: ${msg}" >&2
