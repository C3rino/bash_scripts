#!/bin/bash

# Author: Premysl Vlach
# Date Created: 31/12/2022
# Last Modified: 02/01/2023

# Description
# Prints network info

# Usage
# network_info

green='\033[0;32m'
nocolor='\033[0m'

echo -e "$green\nNETWORK INFORMATION$nocolor\n"
ip addr

publicip=$(curl -s ifconfig.me)
echo -e "\nYour public IP is: $publicip"