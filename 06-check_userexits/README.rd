
# Check User Exists Shell Script

A simple Bash script to check whether a given username already exists on
the system by searching `/etc/passwd`.

## Description

This script prompts the admin for a username, searches `/etc/passwd` for
matching entries, counts the matches, and reports whether the user exists
or not.

## Script

```bash
#!/bin/bash
#check whether user exists or not

read -p "Enter the user name that you want to know whether it exists or not: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
        echo "user doesnt exist"
else
        echo "user exists"
fi
```

## Prerequisites

- A Linux system with `bash` installed
- Read access to `/etc/passwd` (readable by all users by default)

## Usage

1. Save the script as `check_user_exists.sh`
2. Make it executable:
```bash
   chmod +x check_user_exists.sh
```
3. Run the script:
```bash
   ./check_user_exists.sh
```
4. Enter the username when prompted.

## Example

```
Enter the user name that you want to know whether it exists or not: tom
user exists
```
