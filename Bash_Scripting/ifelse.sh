#!/bin/bash


#------------------------------------------------#
# if else and elif
#--------------------------------------------

echo Give ur Name
read name1

if [ "$name1" == John ]; then
        echo hello $name1
elif [ "$name1" == Ring ]; then
        echo Hello $name1 you are 2nd
elif [ "$name1"  == JP ] || [ "$name1" == New ]; then
        echo hello $name1
else 
        echo Forget it $name1, you are  not a Beatle

fi
