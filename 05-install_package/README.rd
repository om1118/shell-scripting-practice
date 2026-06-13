
# Package Installation Shell Script

A simple Bash script to update package lists and install a specified package
using `apt-get`.

## Description

This script takes a package name as a command-line argument, updates the
system's package index, and installs the given package silently.

## Script

```bash
#!/bin/bash
# This script is used to install the package
echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "installation completed"
```

## Prerequisites

- A Debian/Ubuntu-based Linux system (uses `apt-get`)
- `sudo` privileges for the user running the script

## Usage

1. Save the script as `install_package.sh`
2. Make it executable:
```bash
   chmod +x install_package.sh
```
3. Run the script with the package name as an argument:
```bash
   ./install_package.sh
```

## Example

```bash
./install_package.sh nginx
```

Output:
Installing nginx

installation completed


