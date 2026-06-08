
# Variables in Shell Scripting

## Types of Variables


### 1. User-Defined Variables
- These are variables created by the user inside the script.

### 2. Pre-Defined Variables
These are variables already defined by the system.
Examples:

echo $HOME
echo $PATH
echo $USER

These are usually written in uppercase.
These variables are case-sensitive.

Important Points About Variables:

1. Pre- Defined Variables are Case-Sensitive(Should be in capital letters)

2. User- Defined Variables are Space-Sensitive.
   cricket= "virat kohli" (Wrong - will generate error)
   cricket="virat kohli" (Correct)

3. Access Variable Using $
   echo $player

4. View Predefined Variables
   Use the following command to see all environment variables:printenv


