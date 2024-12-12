#!/bin/bash

for i in 1 2 3 4 5
do
    sum=(($sum+$1))
done
echo sum of the "$i" numbers is $sum
ls error

# redirect the error of this code execution by ./debug.sh 2> error.log 