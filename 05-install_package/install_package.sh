#!/bin/bash


# This script is used to install the package 

read -p "Enter the package name you want to install : " package


sudo apt-get update > /dev/null
sudo apt-get install $package -y > /dev/null

echo "installation completed"


