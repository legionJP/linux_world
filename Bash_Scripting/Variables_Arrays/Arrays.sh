#!/bin/bash

My_List=(1 2 3 4 5 6 7 8 9 10)
echo ${My_List[0]}
echo ${My_List[1]}
echo $My_List # prints the first element of the array
echo ${My_List[@]} # prints all the elements of the array # use @ or * to print all the elements of the array
