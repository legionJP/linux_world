#these listed command which everyone should know 

#--------------
# 1. The Shell :
#-------------

# shell is basically a program that takes your commands from the keyboard 
# and sends them to the operating system to perform.

#-------
#Bash:
#-------

# the shell program bash (Bourne Again shell), almost all Linux distributions will default to the bash shell
# other shells available such as ksh, zsh, tsch.

#shell format : username@hostname:current_directory

echo hello shell 
#The echo command just prints out the text arguments to the display.
# the $ is for a normal user using Bash

date 
#print the current date 

whoami
# print the curent user

#-----------
#2. PWD  (Print Working Directory):
#----------

#Everything in Linux is a file, Every file is organized in a hierarchical directory tree.
# The first directory in the filesystem is aptly named the root directory.
# The root directory has many folders and files in which you can store more folders and files.

pwd
 
#-----------
#3. cd (Change Directory)
#---------

#------------
#1. Absolute path:
#----------------
# This is the path from the root directory. The root is the head honcho. 
# The root directory is commonly shown as a slash.
# Every time your path starts with / it means you are starting from the root directory. #Example: /home/jp/Desktop

#-----------
#2. Relative Path :
#------------

# This is the path from where you are currently in filesystem. 
# If I was in location /home/jp/Documents and wanted to get to a directory inside Documents called notes, 
# I don’t have to specify the whole path from root like /home/jp/Documents/taxes,
# I can just go to taxes/ instead.

cd /home/jp/Desktop

cd Linux_Repo

#current directory
cd .

#Parent Directory
cd ..

# Home Direcotry

cd ~

#Previous Directory
cd -