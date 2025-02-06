#!/bin/bash

# positional parameters 

echo "Execution of Scripts: $0"
echo "Please enter the name of user: $1"

adduser --home /$1 $1
echo "User $1 has been created successfully"

# chmod 755 Positional_parameters.sh
# ./Positional_parameters.sh "name_of_user"
