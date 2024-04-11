                        # Linux  Text- Fu 
#______________________________________________________

#---------------------------
#1. stdout(standard out) :
#----------------------------

# Processes use I/O streams to receive input and return output. 
# By default the echo command takes the input (standard input or stdin) from the keyboard and
# returns the output (standard output or stdout) to the screen.

#:' The > is a redirection operator that allows us the change where standard output goes.
 #It allows us to send the output of echo Hello World to a file instead of the screen 

echo Hello World > peanuts.txt

#I didn't want to overwrite my peanuts.txt, luckily there is a redirection operator for that as well, >>:

echo Hello World >> peanuts.txt

ls -l /var/log > myoutput.txt #log of the process

cat myoutput.txt

echo Hello World > rm

> somefile.txt 


#--------------------------------------------
#2.Stdin
#--------------------------------------------

#Just like we had > for stdout redirection, we can use < for stdin redirection.

cat < peanut.txt > almond.txt

#Normally in the cat command, you send a file to it and that file becomes the stdin, 
#in this case, we redirected peanuts.txt to be our stdin. Then the output of cat
#peanuts.txt which would be Hello World gets redirected to another file called almond.txt.

echo < peanuts.txt > banana.txt #

ls < peanuts.txt > banana.txt 
#redireting the all ls command output to banana .txt

pwd < peanuts.txt > banana.txt
#redireting the pwd  output in banana.txt

#--------------------------------
# 3. stderr (Standard Error)
#-------------------------------

ls /fake/directory > peanuts.txt

# There is actually another I/O stream in play here called standard error (stderr).
#  By default, stderr sends its output to the screen as well,
# it's a completely different stream than stdout. 
# So you'll need to redirect its output a different way.

# We will have to use file descriptors. 
#A file descriptor is a non-negative number that is used to access a file or stream.
# but for now know that the file descriptor for stdin, stdout and stderr is 0, 1, and 2 respectively.

# To redirect our stderr to the file we can do this: and stderr messages in peanuts.txt

ls /fake/directory 2> peanuts.txt

# for both stderr and stdout in the peanuts.txt file? 

ls /fake/directory > peanuts.txt 2>&1

#Note: 
#The order of operations here matters,
# 2>&1 sends stderr to whatever stdout is pointing to. 
#In this case stdout is pointing to a file, so 2>&1 also sends stderr to a file

# shorter way to redirect both stdout and stderr to a file:

$ ls /fake/directory &> peanuts.txt

# We can also redirect output to a special file call /dev/null and it will discard any input.

ls /fake/directory 2> /dev/null

#------------------
#4. pipe and tee  :
# ----------------

#pipe : The pipe operator |, represented by a vertical bar,
 #allows us to get the stdout of a command and make that the stdin to another process. 

ls -la \etc  
#list of the  items but difficult ot read

ls -la /etc | less

# we took the stdout of ls -la /etc and then piped it to the less command. 
# The pipe command is extremely useful and we will continue to use it for all eternity.

#________
# tee : if we wanted to write the output of our command to two different streams? That's possible with the tee command: 
#--------

ls | tee peanuts.txt

ls | tee peanuts.txt banana.txt

####################################################################

#------------------
# 5. env(Environment) :
#-----------------
#environment variables contain useful information that the shell and other processes can use.

echo $HOME 
#shows the path of the your directory: /home/jp

echo $USER

#all this commands are coming from our environment varriables

env

#Output : PATH=/home/jp/.local/bin:/usr/local/sbin:/usr/local/bin
     #   PWD=/home/jp/Desktop/Linux_Repo
     #  USER=jp

#One particularly important variable is the PATH Variable.
echo $PATH

#------------
# cut  :  In this their are lots of useful commands that you can use to process text including cut
        #  cut extracts portions of text from a file.
#--------------

echo 'The quick brown; fox jumps over the lazy   dog' > sample.txt

# extract the contents by character,  space also counts as a character.
cut -c 5 sample.txt

#extract the contents by a field,
cut -f 2 sample.txt

#The -f or field flag cuts text based off of fields, 
#by default it uses TABs as delimiters, so everything separated by a TAB is considered a field. 

#combine the field flag with the delimiter flag to extract the contents by a custom delimiter:

cut -f 1 -d ";" sample.txt

#This will change the TAB delimiter to a ";" delimiter , and result will be: first field

cut -c 5-10 sample.txt

cut -c 5- sample.txt

cut -c -5 sample.txt


#-------------------------------
# paste : This is  similar to the cat command, it merges lines together in a file.
#------------------------------------------------------------------------

echo  
'The

quick

brown

fox' > sample2.txt

#combine the all these lines into one line 
paste -s sample2.txt

# changing the delimiter (-d) of the TAB
paste -d ' ' -s sample2.txt

###########################################

#--------------------------
# head: 
#-------------------

# in  long file, in fact we have many to choose from, 
# If we  ahead and cat /var/log/syslog. their is pages on pages 
# so we can fix that with head command, by default the head command will show you the first 10 lines in a file.

head /var/log/syslog

#can also modify the line count to whatever you choose
 uk,8
head -n 15 /var/log/syslog #line count

head -c 15 /var/log/syslog # character count


#------------------------------
# tail : the tail command lets you see the last 10 lines of a file by default.
#------------------------------`        

tail /var/logsyslog

#to see the number of lines
tail -n 10 /var/log/syslog

#you can use is the -f (follow) flag, this will follow the file as it grows.

tail -f /var/log/syslog

#Note : if  Your syslog file will be continually changing 
#while you interact with your system and using tail -f 
#you can see everything that is getting added to that file.


#try this 
man tail

#------------------------
#10. expand and unexpand :
#------------------------

#To change your TABs to spaces, use the expand command.
# This commmand will print output with each TAB converted into groups of spaces.

expand sample.txt

#Saving the output by redirection

expand sample.txt > result.txt

# convert back each group of spaces to a TAB with unexpand command :

unexpand -a result.txt

#------------------------
#11. Join and Spilit :
#---------------------

#this command allows to join the multiples file together by common field:
 
join file1.txt file2.txt

#above files  are joined together by the first field by default and the fields have to be identical, 
#if they are not you can sort them,
# so in this case the files  fileds are indentical so they are joined via 1, 2, 3.

\\
file1.txt

John 1

Jane 2

Mary 3


file2.txt

1 Doe

2 Doe

3 Sue
\\

# joinng the above file you need to specify which fileds u are joining , here we want to join field 2 on 
# file1.txt and filed 1 on file2.txt so 

join -1 2 -2 1 file1.txt file2.txt

#here -1 refers to file1.txt and -2 file2.txt

#-----------
# Split :
#----------

split result.txt

#this will split it into different files, 
#by default it will split them once they reach a 1000 line limit. The files are named x** (xaa) by default.

#-----------
#12. sort: this command is used to sorting the files 
#----------

sort result.txt

#revrse sort 

sort -r result.txt

# Sort by numerical value 
sort -n result.txt

# real use comes when sort command to be combined with other commands,

ls /etc | sort -rn

#----------
#13. tr(Translate)
#----------

#tr (translate) command allows you to translate a set of characters into another set of characters. 
tr a-z A-Z
# then type : hello -- "HELLO"

#if we want remove the some words/char from like from "hello" we only want "h" then\

tr -d ello
# type hello result will be 'h'

#-----------------
#14. uniq (Unique)
#-----------------

#The uniq (unique) command is another useful tool for parsing text


uniq duplicate.txt

#the count of how many occurrences of a line:
uniq -c duplicate.txt

#Let's just get unique values:
uniq -u duplicate.txt

# Let's just get duplicate values:
uniq -d duplicate.txt


#uniq does not detect duplicate lines unless they are adjacent
#overcome this limitation of uniq we can use sort in combination with uniq:

sort duplicate.txt | uniq

# try :
uniq -uc
#then type your text and get unique values 
