#!/bin/bash

echo "this is simple file encyrpter"
echo " please choose option to encrypt or decrypt the file"

choice = "Encrypt Decrypt"

select option in $choice;
do
    if [ $REPLY =1]
then 
        echo "You have selected to encrypt the file"
        echo " Please enter the file name to encrypt"
        read file;
        gpg -c $file
        # rm -r $file 
        echo "The file has been encrypted"
else 
    echo "You have selected to decrypt the file"
    echo "Please enter the file name to decrypt"
    read file2;
    gpg -d $file2
    echo "The file has been decrypted"
fi
done