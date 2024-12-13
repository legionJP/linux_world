#!/bin/bash

for i in 1 2 3 4 5
do
    sum=(($sum+$1))
done
echo sum of the "$i" numbers is $sum
ls error

# redirect the error of this code execution by ./debug.sh 2> error.log 
Question 17.6
# If we want to debug the 15th line of a script, 
# we must provide the _______ command on 14th line and the _______ command on 16th line of the script.

# set -x and set +x