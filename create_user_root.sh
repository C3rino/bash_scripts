#!/bin/bash

# Author: Premysl Vlach
# Date Created: 31/12/2022
# Last Modified: 02/01/2023

# Description
# Create user account with deafult home directory, password and set shell to "zsh"

# Usage
# create_user_root

green='\033[0;32m'
nocolor='\033[0m'
red='\033[0;31m'

echo -e "$green\nCREATE USER ACCOUNT TOOL$nocolor\n"

my_id=$(id -u)
if [ $my_id -ne 0 ] ; then
    echo -e "${red}You must be logged in as root!${nocolor}"
	exit 1
else
    read -p "Enter user name of new user: " username
    useradd -m -s /usr/bin/zsh $username
    passwd $username
fi

exit 0