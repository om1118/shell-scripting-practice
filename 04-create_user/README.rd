
# User Creation Shell Script

A simple Bash script to create a new Linux user and set their password interactively.

## Description

This script prompts the admin for a username and password, creates the user
account with a home directory, and sets the password using `chpasswd`.

## Script

```bash
#!/bin/bash
# This is shell script to create user
echo "====== creating new user ======"
read -p "Enter the user name = " username
read -p "Enter the password = " password
sudo useradd -m "$username"
echo "$username:$password" | sudo chpasswd
echo " =====user created ===="
```

## Prerequisites

- A Linux system with `bash` installed
- `sudo` privileges for the user running the script
- `useradd` and `chpasswd` utilities (pre-installed on most distros)

## Usage

1. Save the script as `create_user.sh`
2. Make it executable:
```bash
   chmod +x create_user.sh
```
3. Run the script:
```bash
   ./create_user.sh
```
4. Enter the username and password when prompted.

## Example

====== creating new user ======

Enter the user name = devuser

Enter the password = MySecurePass123

=====user created ====


