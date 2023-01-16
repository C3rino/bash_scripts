#!/bin/bash

# Author: Premysl Vlach
# Date Created: 31/12/2022
# Last Modified: 02/01/2023

# Description
# Check whether user already exist

# Usage
# user_exist

green='\033[0;32m'
nocolor='\033[0m'
red='\033[0;31m'

echo -e "$green\nCHECK WHETHER USER ALREADY EXIST$nocolor\n"

read -p "Enter the user name: " user_name_check 

getent passwd | grep -w $user_name_check &>/dev/null
if [ $? -eq 0 ] ; then
    echo -e "${red}User already exists"
else
    echo -e "${green}User do not exist"
fi

exit 0