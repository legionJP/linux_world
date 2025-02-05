#!/bin/bash

[[ -z $1 ]] && echo give a number and retry && exit

n=$1; factorial=1; j=1

echo 1 X 1
while [[ $j -le $n ]]
do
    factorial=$(( $factorial* $j ))
    j=$(( $j + 1 ))

    echo $factorial x $j
done

echo $n factorial \($n\!\) = $factorial