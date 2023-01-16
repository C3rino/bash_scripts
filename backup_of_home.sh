#!/bin/bash

# Author: Premysl Vlach
# Date Created: 01/12/2022
# Last Modified: 03/01/2023

# Description
# Create a backup of your home directory

# Usage
# backup_of_home

green='\033[0;32m'
nocolor='\033[0m'
red='\033[0;31m'

echo -e "Hello ${USER^},"
echo -e "this script makes backup of your home directory,$red $HOME $nocolor\n"
read -p "Proceed (y/n): " proceed

if [ $proceed = y ] ; then
    tar -cvf $HOME/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar ~/* 2>/dev/null
    if [ $? -eq 0 ] ; then
        echo -e "$green\nBackup successfully completed"
    else
        echo -e "$red\nBackup was not completed due to error!"
    fi
else
    echo -e "${red}Program terminated" $nocolor  
fi

exit 0