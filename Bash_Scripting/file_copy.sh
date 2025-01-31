#!/bin/bash

# Bad Approach to copy 
cp /home/jp/Documents/images /home/jp/Downloads/images

# Better Approach to copy

Copy_Location=/home/jp/Documents/images

Paste_Location=/home/jp/Downloads/images

cp $Copy_Location $Paste_Location

echo "Files copied successfully from $Copy_Location to $Paste_Location"

# -------------------------------------------------#
# chmod u+x filecopy.sh
# ./filecopy.sh
#-------------------------------------------------#