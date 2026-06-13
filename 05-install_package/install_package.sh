#!/bin/bash


# This script is used to install the package 

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y /dev/null

echo "installation completed"


