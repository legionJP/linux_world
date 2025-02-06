#!/bin/bash

# simple pass generator , using the openssl command
echo "This is a simple password generator: "
echo "Enter the length of the password: "
read PASS_LENGTH

for p in $(seq 1 5);
do
    openssl rand -bash64  48 | cut -c1-$PASS_LENGTH  

done 

# gen 5 rand password 
# start from the first character and go up to the length specified by the PASS_LENGTH variable".
# openssl rand -base64 32    
# This command generates 32 bytes of random data, which results in a 48-character base64-encoded string

# openssl rand -bash64 48
# This command generates 48 bytes of random data, which results in a 72-character base64-encoded string

