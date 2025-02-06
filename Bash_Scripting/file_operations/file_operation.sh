#!/bin/bash

# using the if statement
# -------------------------------------------------#
# check if the file exits
# -------------------------------------------------#

echo Enter the name of the file

read name
if [ -f $name ];
then
        echo file "$name" exits
else
        echo file "$name" does not exits

fi

# -------------------------------------------------#
# creating the dir and file inside it then deleting it
# -------------------------------------------------#


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



# -------------------------------------------------#
# Testing the file
# -------------------------------------------------#
# if [ -x /etc/passwd ]; then
if [ -f /etc/passwd ]; then
        echo file is executable
        # ACTION
fi

# -------------------------------------------------#

# -------------------------------------------------#
# Testing the Dir
# -------------------------------------------------#

if [ -d C:\Users\jjpsi\Projects_Repos_Notes\linux_dev> ];
then 
        echo "Directory exits"
else
        echo "Directory does not exits"
fi



# checking for the file 
# -e flag is used for checking the file exits or not , for both file and dir
# -f flag is used for checking the file exits or not , for only file or regular file
# -d flag is used for checking the dir exits or not , for only dir


if [ -e /etc/config.json];
then    
        echo "File exits"
else
        echo "File does not exits"
fi
