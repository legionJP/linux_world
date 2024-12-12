#!/bin/bash

# --------------------------------------------------------------------------------------------------#
#          String Manupulation
#--------------------------------------------------------------------------------------------------#

echo Give the two string to compare 
read str1 str2
echo str1="$str1", str2="$str2"

echo testing the string with [[]] and no qoutes
if [[ $str1 = $str2 ]]; then
        echo "These are the identical"
else 
        echo "These are not same"
fi

 echo testing the string with [] and qoutes 
if [ "$str1" = "$str2" ]; then
         echo "These are the identical"
else
         echo "These are not same"
fi

echo test or comapre with [] with qoutes don\'t give error

echo  comparing with [] and no qotes

if [ $str1 = $str2 ]; then
         echo "These are the identical"
else
        echo "These are not same"
fi

echo comapring with single bracket and no qotes gives the error when the one \
string is empty


# -------------------------------------------------#
#  Manipulating Parts of Strings
# -------------------------------------------------#

echo Enter the name to Slice
read name
#name="Linus Torvalds"
echo First Name 5char. = ${name:0:5}
echo Full Name = ${name#.}




# -------------------------------------------------#
#  String  comparison
# -------------------------------------------------#

echo "enter your choice of Seat"
read Choice
if [ "$Choice" == Window ]; then
        echo "your choice is  $Choice seat, 29"
elif [ "$Choice" == Middle ]; then
        echo "your choice is $Choice seat , 29B"
else
        echo $Choice is not available
        echo try again 
fi

# -------------------------------------------------#
#  String Test with Boolean Operations 
# -------------------------------------------------#
