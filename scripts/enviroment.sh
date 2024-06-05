#!/bin/bash
#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
#source "$SCRIPT_DIR/check_env.sh"
#default_home="$( cd "$SCRIPT_DIR/.." && pwd)"
#default_name=$(basename $default_home)
#PROJECT_HOME=$(echo "$default_name" | tr a-z A-Z)
#PROJECT_HOME_NAME="${PROJECT_HOME}_HOME"
#PROJECT_HOME=$(eval echo \$$PROJECT_HOME_NAME)

printf "\n"
printf "Enviroment Setup\n"

add() {
     printf "Adding active enviroments...\n"
     # Parse parrams for function
     while [ $# -gt 1 ]; do
     case "$2" in
          -n|--env_name)
          name="$3"
          ;;
          -l|--env_link)
          link="$3"
          ;;
     *)
          printf "Avaivalbe arguments: \n"
          printf "       [-n|--env_name]*      - Name of enviroment \n"    
          printf "       [-l|--env_link]*      - Link to enviroment git \n"    
          exit 1
     esac
     shift
     shift
     done

     # Exit if [name] was null
     if [[ -z "$name" ]]; then
          printf "\n"
          printf "##########################################################   \n"
          printf "\n"
          printf "  [name] was null! Please set all requared params.          \n"
          printf "  All requared params: env_name, env_link                    \n"
          printf "  Use -h or --help to see all avaivable commands...           \n"
          printf "\n"
          printf "##########################################################  \n"
          printf "\n"
          printf "Enviroment Setup Failed...\n"
          exit 1
     fi
     printf "Enviroment name: $name \n"

      # Exit if [link] was null
     if [[ -z "$link" ]]; then
          printf "\n"
          printf "##########################################################   \n"
          printf "\n"
          printf "  [link] was null! Please set all requared params.          \n"
          printf "  All requared params: env_name, env_link                    \n"
          printf "  Use -h or --help to see all avaivable commands...           \n"
          printf "\n"
          printf "##########################################################  \n"
          printf "\n"
          printf "Enviroment Setup Failed...\n"
          exit 1
     fi
     printf "Enviroment link: $link \n"

     printf "\n"
     printf "Settuping variables...\n"
     repository="https://github.com/WhiteshadowYS/saas_test.git"
     pathToDownload="lib/sources"
     pathToNewContentFolder="./$name"
     mainFolderName="saas_test"
     pathToCopy="$mainFolderName/lib/sources/main/."
     printf "Setup Success!!!\n"

     printf "\n"
     printf "Downloading...\n"
     cd $pathToDownload
     git clone -b $link $repository
     mkdir $pathToNewContentFolder
     cp -R $pathToCopy $pathToNewContentFolder
     rm -rf $mainFolderName
     printf "Downloading Success!!!\n"
     printf "\n"
     
     printf "\n"
     printf "Settuping config..."
     # Define the path variable
     CONFIG_FILE_PATH="$pathToNewContentFolder/config/config.dart"
     CONFIG_FILE_CONTENT="import 'package:injectable/injectable.dart';

const String enviromentName = '$name';
const Environment $name = Environment(enviromentName);"

     rm "$CONFIG_FILE_PATH/config.dart"
     # Create the file and write the content
     echo "$CONFIG_FILE_CONTENT" > "$CONFIG_FILE_PATH"

     # Confirm the creation of the file
     if [ -f "$CONFIG_FILE_PATH" ]; then
     echo "File 'config.dart' has been created at $CONFIG_FILE_PATH"
     else
     echo "Failed to create the file at $CONFIG_FILE_PATH"
     fi
}

remove() {
     printf "Removing active enviroments...\n"
     # Parse parrams for function
     while [ $# -gt 1 ]; do
     case "$2" in
           -n|--env_name)
          name="$3"
          ;;
     *)
          printf "Avaivalbe arguments: \n"
          printf "       [-e|--env]*      - Enviroment name \n"
          exit 1
     esac
     shift
     shift
     done

     # Exit if [name] was null
     if [[ -z "$name" ]]; then
          printf "\n"
          printf "##########################################################   \n"
          printf "\n"
          printf "  [name] was null! Please set all requared params.          \n"
          printf "  All requared params: env_name                          \n"
          printf "  Use -h or --help to see all avaivable commands...           \n"
          printf "\n"
          printf "##########################################################  \n"
          printf "\n"
          printf "Enviroment Setup Failed...\n"
          exit 1
     fi
     printf "Enviroment name: $name \n"

     printf "\n"
     printf "Settuping variables...\n"
     pathToDownload="lib/sources"
     pathToNewContentFolder="./$name"
     printf "Setup Success!!!\n"

     printf "\n"
     printf "Removing...\n"
     cd $pathToDownload
     rm -rf $pathToNewContentFolder
     printf "Removing Success!!!\n"
     printf "\n"
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