#!/bin/bash
function validation(){
	input=$1
	pattern=$2
	flag=0
	while [ $flag -eq 0 ]
	do
		if [[ $input =~ $pattern ]]
		then
			echo "it is valid"
			flag=1
		else
			echo "it is not valid"
			read input
		fi
	done
	echo $input
}
echo "enter firstName start with capital letter and has minimum 3 character"
read firstName
pattern="^([A-Z]{1})[a-z]{2}"
validation $firstName $pattern

echo "enter LastName start with capital letter and has minimum 3 character"
read LastName
pattern="^([A-Z]{1})[a-z]{2}"
validation $LastName $pattern

echo "enter Email address"
read email
pattern="^[a-zA-Z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[0-9a-zA-Z]{1,}\.[a-zA-Z]{2,4}([.][a-zA-Z]{2,3}){0,1}$"
validation $Email $pattern

echo "enter valid mobile number with country code"
read mobilenumber
pattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
validation "$mobilenumber $pattern

echo "password should minimum 8 character"
echo "enter password"
read password
pattern="^.*([A-Z]{1,}).*([~!@#$%^&*]{1}([0-9]{1,}).{5,}"
validation $password $pattern


