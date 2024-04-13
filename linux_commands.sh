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
#-----------------------
#4. ls (List Directories) :
#------------------------

# ls command to list directory contents. 
# The ls command will list directories and files in the current directory by default,
#  however you can specify which path you want to list the directories of.

ls

ls /home/jp

# Filenames that start with . are hidden, to see use  ls command and pass the -a flag to it (a for all).
ls -a

# one more useful ls flag, -l for long,

# this shows a detailed list of files in a long format. 
# This will show you detailed information, starting from the left: file permissions, number of links,
# owner name, owner group, file size, timestamp of last modification, and file/directory name.

ls -l

#  we habe used flags  -a and -l, well you can add them both together with -la. 
# The order of the flags determines which order it goes in,
# you can also do ls -al and it would still work.

ls -la 

ls -al

#-----------------------
#5.  touch
#------------------------

touch  newfile 
# Touch allows you to the create new empty files.

# Touch is also used to change timestamps,
# do an ls -l on a file and note the timestamp, then touch that file and it will update the timestamp.

#-----------------------
#6.  File
#------------------------


# filenames aren’t required to represent the contents of the file. 
# You can create a file called funny.gif that isn’t actually a GIF.

To find out what kind of file a file is, you can use the file command. 
It will show you a description of the file’s contents.
file xaa

file result.txt

#-----------------------
#7.  cat
#------------------------

# to read a file A simple command to use is the cat command, short for concatenate

#  it can combine multiple files and show you the output of them. it’s only meant for short content

cat result.txt 

cat result.txt  sample.txt

#-----------------------
#8.  less
#------------------------

less home/jp/Documents/textfile1

# If you are viewing text files larger than a simple output,  use 'less'
#  a command called 'more' that does something similar, so this is ironic.

# The text is displayed in a paged manner, so you can navigate through a text file page by page.The text is displayed in a paged manner, 
# so you can navigate through a text file page by page.


# Use the following command to navigate through less:

# q - Used to quit out of less 

# Page up, Page down, Up and Down - Navigate using the arrow keys and page keys.

# g - Moves to beginning of the text file.

# G - Moves to the end of the text file.

# /search - You can search for specific text inside the text document. Prefacing the words you want to search with /

# h - If you need a little help about how to use less while you’re in less, use help.
# Exercises


#-----------------------
#9. History :
#------------------------

# There is a history of the commands that you previously entered,

history 

#want run the same command you did before, just hit the up arrrow


# Another history shortcut is 'ctrl-R', this is the reverse search command, 
# if you hit ctrl-R and you start typing parts of the command you want
# it will show you matches and you can just navigate through them by hitting the ctrl-R key again

clear

#-----------------------
#9. cp(Copy)
#------------------------
)
cp myfile /home/jp/Documents

# mycoolfile is the file 

# and home/jp/Documents is a directory 

# copy multiple files and directories

# use wildcards. A wildcard is a character that can be substituted for a pattern based selection,

cp * .jpg /home/jp/Pictures 

# copy all files with the .jpg extension in your current directory to the Pictures directory.


#Patterns

# * the wildcard of wildcards, it's used to represent all single characters or any string.

# ? used to represent one character

# [] used to represent any character within the brackets

 
#  to do a cp on a directory that contains a couple of files to your Documents directory. Didn’t work did it

# that’s because you’ll need to copy over the files and directories inside

#  can do it with -r command.

cp -r myfile/ /home/jp/Documents

 
#  if you copy a file over to a directory that has the same filename, the file will be overwritten

#  don’t want to get accidentally overwritten. You can use the -i flag (interactive) to prompt you before overwriting a file.

cp -i myfile /home/jp/Pictures


#-----------------------
#9. mv(Move)
#------------------------

# Used for moving files and also renaming them

# similar to the cp command in terms of flags and functionality.

mv filetxt1 filetxt

# move a file to a different directory:

mv file2 /home/jp/Documents

# move more than one file:

mv file_1 file_2 /home/jp/Documents

# can rename directories as well: use -i to avoid overwriting 

mv -i  directory1 directory2


# you did want to mv a file to overwrite the previous one. 
# You can also make a backup of that file and it will just rename the old version with a ~.

mv -b directory1 directory2