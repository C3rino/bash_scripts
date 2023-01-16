#!/bin/bash

# Author: Premysl Vlach
# Date Created: 31/12/2022
# Last Modified: 02/01/2023

# Description
# Create user account with deafult home directory, password and set shell to "zsh"

# Usage
# create_user_sudo

green='\033[0;32m'
nocolor='\033[0m'
red='\033[0;31m'

echo -e "$green\nCREATE USER ACCOUNT$nocolor\n"

read -p "Enter user name of new user: " username
sudo useradd -m -s /usr/bin/zsh $username
sudo passwd $username

exit 0
