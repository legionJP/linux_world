#!/bin/bash

#-------------------------------------------------#
# check the command execution status
[hello = hello]
echo $? # 0 means success
[1=0]
echo $? # 1 means failure , or error 


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


#-------------------------------------------------
# Script 2 
# -------------------------------------------------#
if [[ ${1,,} = jp]]; then
        echo "You are JP"
elif [[ ${1,,} = help ]]; then
        echo "enter your username"
else
        echo "You are not JP"
fi
