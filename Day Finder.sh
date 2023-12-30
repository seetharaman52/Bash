#!/bin/bash
echo "Input example - April 17, 2003"
read -p "Enter your birthdate along with month, date, year: " BIRTHDATE
BIRTHDAY=`date -d "$BIRTHDATE" +%A`
echo $BIRTHDAY