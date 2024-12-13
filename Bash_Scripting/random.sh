#!/bin/bash

for n in 1 2 3 4
do
    echo a New Random number is $RANDOM
done

echo Enter the word as argument
read $name

# check input length if the supplied or not

[[ $# -eq 0 ]] && echo "Usage: $0 word" && exit 1

echo "$name-$RANDOM"
exit 0

#