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

read -p "Enter an email: " email

pat="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-z]+\.[a-z]{2,}([.]{1}[a-z]{2,}){0,2}$"

if [[ $email =~ $pat ]]
then
        echo "Email is Valid"
else
        echo "Enter a valid Email"
fi
