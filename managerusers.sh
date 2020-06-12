#!/bin/bash

userfile= userlist.txt
username=$(cat "$userlist.txt")
password= $username@'1234'
for user in $username
do 
useradd $user
echo $password | passwd --stdin $user
done
echo "$(wc -l userlist.txt) users have been created"
tail -n$(wc -l userlist.txt) /etc/passwd

while true; do
	read -p "Should ${username} be deleted from system? (yN)" -r yn
		case $yn in
			[Yy]* ) echo "Deleting: ${user}"
				echo userdel -r "${user}"
	break;;
	[Nn}* ) echo "the next user please"
	break;;
	* ) echo please answer yes or no." ;;

esac
done


