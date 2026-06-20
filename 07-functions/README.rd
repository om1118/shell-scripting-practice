# User Creation Shell Script Using Function

A simple Bash script that uses a **function** to create a new Linux user.

## Script

```bash
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
```

## Usage

1. Save the script as `create_user_function.sh`
2. Make it executable:
```bash
   chmod +x create_user_function.sh
```
3. Run the script:
```bash
   ./create_user_function.sh
```

## Example

```
enter the user name: devuser
user created successfully
```

## How to Call a Function in Bash

Define the function first, then call it by its name alone on a new line:

```bash
function create_user {   # define
    # commands
}

create_user              # call
```

- Function must be **defined before** it is called
- Call it by **name only** — no parentheses
- Without the call line, the function is defined but **never runs**

## Explanation of Key Parts

| Part | Explanation |
|------|-------------|
| `<<info ... info` | Multi-line comment block (heredoc) |
| `function create_user { }` | Defines the function |
| `read -p` | Prompts user for input and stores it in `$username` |
| `useradd -m $username` | Creates user with a home directory |
| `create_user` (last line) | Calls/executes the function |

