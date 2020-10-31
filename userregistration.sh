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
echo "enter firstName start with capital letter and has minimum 3 character"
read firstName
pattern="^[A-Z]{1}[a-z]{2}"
validation $firstName $pattern

echo "enter LastName start with capital letter and has minimum 3 character"
read LastName
validation $LastName $pattern
