
## 03 - User Input & Arguments
   This script covers two fundamental ways of passing data into a bash script: interactive user input and command-line arguments.

## User Input (read)
   read -p "who is your favourite sportsperson" sport
   echo "my favourite sportsperson is $sport"
   
   The read -p command prompts the user with a message and waits for them to type a response. Whatever they type gets stored in the variable (sport in this case), which can   then be used anywhere in the script with $sport.

## Command-Line Arguments
  echo "is am practicing $0"
  echo "first one is $1"
  echo "second one is $2"
  echo "Hence this two are my favourite sports person $@"
  echo "total number of people are = $#"

  When you run a script like ./script.sh Messi Ronaldo, bash automatically populates special variables:
  
  $0 = The script's own name 
  $1 = First argument passed
  $2 = Second argument passed
  $@ = All arguments as a list
  $# = Total number of arguments

