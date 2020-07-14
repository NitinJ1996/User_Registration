#!/bin/bash -x
shopt -s extglob

read -p "Enter the first name: " fname

if [[ $fname =~ ^[[:upper:]]{1}[[:lower:]]{2,}$ ]]
then
	echo "FirstName is valid"
else
	echo "Enter a valid name with first letter as Capital"
fi
