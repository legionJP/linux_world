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
#4. Pipe and Tree
# ----------------