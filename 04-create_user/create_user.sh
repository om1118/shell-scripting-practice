
#!/bin/bash

#This is shell script to create user

echo "====== creating new user ======"

read -p "Enter the user name = " username

read -p "Enter the password = " password

sudo useradd -m "$username"

echo "$username:$password" | sudo chpasswd

echo " =====usre created ===="




