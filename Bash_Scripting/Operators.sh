#!/bin/bash

# -------------------------------------------------#
#  Using the Operators for Numerical Tests
# -------------------------------------------------#

echo Enter the your age to know the age range
AGE=$1
if [[ $AGE -ge 20 ]] && [[ $AGE -lt 30 ]]; then
        echo "You are in the 20s "
elif [[ $AGE -ge 30 ]] && [[ $AGE -lt 40 ]]; then
        echo "You are in the 30s "
elif [[ $AGE -ge 40 ]] && [[ $AGE -lt 50 ]]; then
        echo "You are in the 40s "
else
        echo at AGE=$AGE, you are not in proper range of age group of 21-50
fi