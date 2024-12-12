#! /bin/bash


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
