#!/bin/bash

# Author: Premysl Vlach
# Date Created: 31/12/2022
# Last Modified: 02/01/2023

# Description
# Prints operating system info

# Usage
# system_info

green='\033[0;32m'
nocolor='\033[0m'

echo -e "$green\nOPERATING SYSTEM INFORMATION$nocolor"

echo -e "$green\nPrinting 'etc/os-release' info: $nocolor"
cat /etc/os-release

echo -e "$green\nPrinting 'uname' info: $nocolor"
uname -a

echo -e "$green\nPrinting 'lsb-release' info: $nocolor"
lsb_release -a

echo -e "$green\nPrinting 'hostnamectl' info: $nocolor"
hostnamectl

exit 0