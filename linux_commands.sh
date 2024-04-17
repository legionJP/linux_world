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
#10. cp(Copy)
#------------------------

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
#11. mv(Move)
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


#-----------------------
# 12. mkdir (Make Directory)
#------------------------

# it will create a directory if it doesn’t already exist. 
# You can even make multiple directories at the same time.

mkdir notes books

# also create subdirectories at the same time with the -p (parent flag).

mkdir -p notes/books/favorites

#-----------------------
# 13. rm (Remove)
#------------------------

rm file1

# Write-protected files will prompt you for confirmation before deleting them.
#  If a directory is write-protected it will also not be easily removed.

rm -f file1

# -f or force option tells rm to remove all files, whether they are write protected or not, 

rm -i file

# Adding the -i flag like many of the other commands, 
# will give you a prompt on whether you want to actually remove the files or directories

rm -r directory

# You can’t just rm a directory by default,
# you’ll need to add the -r flag (recursive) to remove all the files and any subdirectories it may have

rmdir directory

# You can remove a directory with the rmdir command

#-----------------------
# 14. find
#------------------------

# among all the files we have on the system, if we want  try to 
# find a specific one, the command is 

find /home -name image.jpg

# You can specify what type of file you are trying to find.
# I’m trying to find as (d) for directory and I’m still searching by the name of MyFolder.
find /home -type d -name Linux_Repo


#-----------------------
# 15. help 
#------------------------

# One tool, help, is a built-in bash command 
# that provides help for other bash commands (echo, logout, pwd, etc).

help echo
# This will give you a description 
# and the options you can use when you want to run echo.

echo --help

# For other executable programs, it’s convention to have an 
#  option called --help or something similar.
# it's probably your best shot to find some help on a program.

#--------------------
#16. man
#--------------------

# do you wish some of these programs had a manual so we can see 
# some more information about them. Well luckily they do! 
man ls 


# Man pages are manuals that are by default built into most 
# Linux operating systems. 
# They provide documentation about commands and other aspects of the system.

#--------------------
#17. whatis
#--------------------

# if you are ever feeling doubtful about what a command does,
# you can use the whatis command, it provides a brief description of command line programs.

what is cat

#--------------------
#18. alias
#--------------------

# if you need to type a long command many times, 
# t’s best to have an alias you can use for that. 

# To create an alias for a command you simply specify an alias name 
# and set it to the command.

alias foobar = 'ls -la'
# Now you  can type foobar and it will execute that command, 

# to use it after boot you'll need to add a permanent alias in:

~/.bashrc

#You can remove aliases with the unalias command:
unalias foobar

#--------------------
#19. exit
#--------------------

# To take a brake  exit from the shell, you can use the exit command

exit 

#or logout command

logout 