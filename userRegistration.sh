#!/bin/bash 
shopt -s extglob

patternfname="^[[:upper:]]{1}[[:lower:]]{2,}$"
patternlname="^[[:upper:]][[:lower:]]{2,}$"
patternemail="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-z]+\.[a-z]{2,}([.]{1}[a-z]{2,}){0,2}$"
patternmobile=^[0-9]{2}[[:space:]][1-9][0-9]{9}$
count=0

function fname_validation(){
valid=true
        while [ $valid ]
        do
	read -p "Enter the first name: " fname

	if [[ $fname =~ $patternfname ]]
	then
		echo "FirstName is valid"
		valid=false
		((count++))
		break
	else
		echo "Enter a valid name with first letter as Capital"
	fi
	done
}

function lname_validation(){
        valid=true
        while [ $valid ]
        do

	read -p "Enter the last name: " lname

	if [[ $lname =~ $patterlname ]]
	then
        	echo "LastName is valid"
	valid=false
                ((count++))
                break
	else
        	echo "Enter a valid last name with First letter as Capital"
	fi
	done
}

function email_validation(){
        valid=true
        while [ $valid ]
        do
	read -p "Enter an email: " email
	if [[ $email =~ $patternemail ]]
	then
        	echo "Email is Valid"
		valid=false
		((count++))
		break
	else
        echo "Enter a valid Email"
	fi
	done
}

function ph_num_validation(){
        valid=true
        while [ $valid ]
        do

	read -p "Enter a Mobile number: " number

	if [[ $number =~ $patternmobile ]]
	then
        	echo "Number valid"
		valid=false
		((count++))
		break
	else
        	echo "Enter a valid number"
	fi
	done
}

function password_validation(){
        special='^[A-Za-z0-9]*[@#$%&=*_-][A-Za-z0-9]*$'
        valid=true
        while [ $valid ]
        do
	read -p "Enter a password: " password

	if [[ ${#password} -ge 8 && "$password" =~ [[:upper:]]+ && "$password" =~ [[:digit:]]+ && $password =~ $special ]]
	then
        	echo "Password Valid"
		valid=false
		((count++))
		break
	else
        	echo "Password Not Valid"
	fi
	done
}

fname_validation
lname_validation
email_validation
ph_num_validation
password_validation

if [ $count -eq 5 ]
then
        echo "Registration Successful"
fi

