#! /bin/bash

# using the if statement
echo Enter the name of the file

read name
if [ -f $name ];
then
        echo file "$name" exits
else
        echo file "$name" does not exits

fi


# asking the number from user

func1(){
        echo "Entered num for func 1"
}
func2()
{
        echo "Enterd num for func2"
}
func3(){
        echo :"Enterd num for func3"
}

echo "Enter the Number from 1 to 3 "
read n
func$n


# creating the dir and file inside it then deleting it

echo  "Enter the  dir name: "
read  name

org_dir=$(pwd)

# check if dir already exits
[[ -d $name ]] && echo $name already exits !, aborting && exit


sudo mkdir  $name

cd $name
pwd


# using the touch to create the several file

for n in 1 2 3 4
do 
  sudo touch file$n
done

ls file?

for content in file?
do
  sudo echo This file is named $content > $content
done

sudo cat file?

cd $org_dir

sudo rm -rf $name

echo Good Bye!



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

# -------------------------------------------------#
# Testing the file

if [ -x /etc/passwd ]; then
        echo file is executable
        # ACTION
fi

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
#  Uiing the Operators for Numerical Tests
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
# -------------------------------------------------#
# String Manupulation
# -------------------------------------------------#

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
#  Parts of Strings
# -------------------------------------------------#
echo Enter the name to Slice
read name
#name="Linus Torvalds"
echo First Name 5char. = ${name:0:5}
echo Full Name = ${name#.}



# -------------------------------------------------#
#  String Test with Boolean Operations 
# -------------------------------------------------#
