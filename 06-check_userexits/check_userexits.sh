
#!/bin/bash

#check wether user exists or not


read -p " enter the user name that you want to know wether it exists or not " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo "user doesnt exists"
else
	echo "user exists"
fi



