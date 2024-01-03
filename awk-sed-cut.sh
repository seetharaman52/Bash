#!/bin/bash

## Example of using awk ##
date | awk -F" " '{ print "Day: "$1"" }'
date | awk -F" " '{ print "Date: "$2"" }'
date | awk -F" " '{ print "Month: "$3"" }'
date | awk -F" " '{ print "Year: "$4"" }'
date | awk -F" " '{ print "Time: "$5"" }'
date | awk -F" " '{ print "AM/PM: "$6"" }'
date | awk -F" " '{ print "Standard: "$7"" }'
cat /etc/passwd | awk -F":" '{ print $1 }' | tail -n1

## Example of sed ##
sed -i 's/word1/word2/g' file.txt # Replaces word1 with word2
sed -i 's/\//:/g' file.txt # Replaces "/" with ":"
sed -n '1,10p' $0 # View first 10 lines of this file

## Example of Cut ##
cut -d":" -f1,5 /etc/passwd # Gives $1 and $5
cut -d":" -f1 /etc/passwd # Gives $1
