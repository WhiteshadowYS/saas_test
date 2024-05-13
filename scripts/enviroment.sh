#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "$SCRIPT_DIR/check_env.sh"
default_home="$( cd "$SCRIPT_DIR/.." && pwd)"
default_name=$(basename $default_home)
PROJECT_HOME=$(echo "$default_name" | tr a-z A-Z)
PROJECT_HOME_NAME="${PROJECT_HOME}_HOME"
PROJECT_HOME=$(eval echo \$$PROJECT_HOME_NAME)

echo "Enviroment Setup"

add() {
     printf "Adding active enviroments...\n"
     # Parse parrams for function
     while [ $# -gt 1 ]; do
     case "$2" in
          -e|--env)
          enviromentsMap="$3"
          ;;
     *)
          printf "Avaivalbe arguments: \n"
          printf "       [-e|--env]*      - Map of enviroments with Git links [env_name, git_link] \n"    
          exit 1
     esac
     shift
     shift
     done
}

remove() {
     printf "Removing active enviroments...\n"
     # Parse parrams for function
     while [ $# -gt 1 ]; do
     case "$2" in
          -e|--env)
          enviromentsList="$3"
          ;;
     *)
          printf "Avaivalbe arguments: \n"
          printf "       [-e|--env]*      - List of enviroment names what should be removed \n"
          exit 1
     esac
     shift
     shift
     done
}


# Help
if ([ -z "$1" ]); then
     printf "Avaivalbe commands:\n"
     printf "  add       - Add new active enviroments to application \n"
     printf "                 [-e|--env]*      - Map of enviroments with Git links [env_name, git_link] \n"     
     printf "  remove    - Remove active enviroments from application \n"
     printf "                 [-e|--env]*      - List of enviroment names what should be removed \n"    
     exit 1

elif [ $1 == "add" ]; then
     add $*
     exit 1

elif [ $1 == "remove" ]; then
     remove $*
     exit 1

else
     printf "Avaivalbe commands:\n"
     printf "  add       - Add new active enviroments to application \n"
     printf "                 [-e|--env]*      - Map of enviroments with Git links [env_name, git_link] \n"     
     printf "  remove    - Remove active enviroments from application \n"
     printf "                 [-e|--env]*      - List of enviroment names what should be removed \n"    
     exit 1
fi