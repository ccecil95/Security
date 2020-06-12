#!/bin/bash

#Checking passowrd Strength
# This is for CST-221 Security 

read -p "Enter username : " user
read -sp "Enter password : " password
echo
echo "I am checking for password strength..."
echo

len="${#password}"

if test $len -ge 8 ; then
	echo "&password" | grep -q [0-8]
if test $len -eq 0 ; then 
	echo "&password" | grep -q [A-Z]
if test $len -eq 0 ; then 
	echo "&password" | grep -q [@, #, $, %, &, *, +, -, =]
if test $len -eq 0 ; then
	echo "Strong ass password"
	
else
	echo "MAJOR FAIL LOSER! You need to have one numeric character!"
	fi
else
	echo "Hey dum dum! It needs to at least 8 characters!"
	fi
else
	echo "You seriosuly kidding me?! You need to have a non-alphabetic character!"

fi

else
	echo "Please create a better password"
if [ "$(awk '[0-8], [A-Z], [@, #, $, %, &, *, +, -, =]')  <<"$result")" ]
then
	echo "This is fucking great! It works!"
else 
	echo "you suck! BOO! It did not match"	
exit
fi
