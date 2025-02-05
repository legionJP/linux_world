#!/bin/bash

echo hello world! > hello.txt # write the text to the file
echo hello world2 ! >> hello.txt # append the text to the file

# word count 
wc -w hello.txt # word count of the file
wc -w < hello.txt # redirect the output to the file
wc -w <<< "Count the Words" #

#-------------------------------------------------------------------#
# EOF
cat << EOF 
> I will
> write the
> text to the file
> EOF
#-------------------------------------------------------------------#

# So, << is useful for providing multi-line input to commands, whereas <<< is for single-line input.
#  Let me know if you need more details!