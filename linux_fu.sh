                        # Linux  Text- Fu 
#______________________________________________________

#1. stdout(standard out) :

#Processes use I/O streams to receive input and return output. By default the echo command takes the input (standard input or stdin) from the keyboard and
# returns the output (standard output or stdout) to the screen.

#:' The > is a redirection operator that
 #allows us the change where standard output goes.
 #It allows us to send the output of 
# echo Hello World to a file instead of the screen 

 echo Hello World > peanuts.txt

#I didn't want to overwrite my peanuts.txt, luckily there is a redirection operator for that as well, >>:
 echo Hello World >> peanuts.txt
#---------------------------------------------------------
#2.Stdin
#--------------------------------------------
