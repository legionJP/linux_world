#!/bin/bash

case ${1,,} in 
    jp | administrator) 
    # case 1
        echo "You are admin JP"
        ;;
    help) 
    # option 2
        echo "Enter your username"
        ;;
    *) 
     #  * means anything other than the above two
        echo "You are not JP"
        ;;
esac


# echo ${1^^} # convert to upper case
# echo ${1,,} # convert to lower case
# echo ${1^^[a-z]} # convert to upper casem