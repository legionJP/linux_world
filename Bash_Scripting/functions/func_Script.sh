#! /bin/bash


#  declaring the functions 

function function1()
{
        echo "func one "
}

# 2
func(){
        echo "func2 declaration "
}

# Calling the function 

function1
func


#-------------------------------------------------------#
# fucntion to test the shadow file and paswd file
#-------------------------------------------------------#

function test_shadow(){
        if [ -e /etc/shadow];
        then 
                echo "Shadow file exits"
        else
                echo "Shadow file does not exits"
        fi

test_passwd
}

function test_passwd(){
        if [ -e /etc/passwd];
        then 
                echo "Passwd file exits"
        else
                echo "Passwd file does not exits"
        fi
}

test_shadow


#-------------------------------------------------------#
# asking the number from user
#-------------------------------------------------------#

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
