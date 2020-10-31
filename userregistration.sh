#!/bin/bash
read -p "enter user first name : " firstName
pattern="^[A-Z]{1}[a-z]{2}"
if [[ $firstName =~ $pattern ]]
then
	echo "valid first Name"
else
	echo "Invalid first Name"
fi
