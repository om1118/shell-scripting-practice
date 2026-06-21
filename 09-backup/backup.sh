#!/bin/bash

<<info

This shell script is to take timely backup

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip -r "$2/backup-$timestamp.zip" $1 

echo "backup completed"


