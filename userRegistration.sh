#!/bin/bash -x
shopt -s extglob

read -p "Enter the first name: " fname

if [[ $fname =~ ^[[:upper:]]{1}[[:lower:]]{2,}$ ]]
then
	echo "FirstName is valid"
else
	echo "Enter a valid name with first letter as Capital"
fi

read -p "Enter the last name: " lname

if [[ $lname =~ ^[[:upper:]][[:lower:]]{2,} ]]
then
        echo "LastName is valid"
else
        echo "Enter a valid last name with First letter as Capital"
fi
