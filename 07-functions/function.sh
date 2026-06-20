#!/bin/bash


<<info
shell script for function

info

function create_user {
read -p "enter the user name: " username

sudo useradd -m $username

echo "user created successfully"

}

create_user
