#!/bin/bash

# Define constants
REPOSITORY_URL="https://github.com/WhiteshadowYS/saas_test.git"

# Function to check if a variable is set
check_var() {
    if [ -z "$1" ]; then
        echo "Error: $2 is not set."
        exit 1
    fi
}

# Function to generate the environments list
generate_environments_list() {
    local sources_path="$1"
    local file_path="$2"
    local output_file="$file_path/environments.dart"

    # Validate paths
    check_var "$sources_path" "SOURCES_PATH"
    check_var "$file_path" "FILE_PATH"

    echo "const List<String> environments = [" > "$output_file"

    for dir in "$sources_path"/*/; do
        if [ -d "$dir" ]; then
            folder_name=$(basename "$dir")
            echo "  '$folder_name'," >> "$output_file"
        fi
    done

    echo "];" >> "$output_file"

    if [ -f "$output_file" ]; then
        echo "File 'environments.dart' has been created at $output_file"
    else
        echo "Failed to create the file at $output_file"
    fi
}

# Function to setup config
setup_config() {
    local path_to_new_content_folder="$1"
    local env_name="$2"
    local config_file_path="$path_to_new_content_folder/config/config.dart"
    local config_file_content="import 'package:injectable/injectable.dart';

const String enviromentName = '$env_name';
const Environment $env_name = Environment(enviromentName);"

    rm "$config_file_path/config.dart"
    echo "$config_file_content" > "$config_file_path"

    if [ -f "$config_file_path" ]; then
        echo "File 'config.dart' has been created at $config_file_path"
    else
        echo "Failed to create the file at $config_file_path"
    fi
}

# Function to generate DI code
generate_di_code() {
    cd ../../
    dart run build_runner build --delete-conflicting-outputs
}

# Function to add environment
add_environment() {
    local env_name=""
    local env_link=""
    local commit_code=""

    while [ $# -gt 1 ]; do
        case "$1" in
            -n|--env_name)
                env_name="$2"
                ;;
            -l|--env_link)
                env_link="$2"
                ;;
            -c|--commit_code)
                commit_code="$2"
                ;;
            *)
                echo "Available arguments:"
                echo "  [-n|--env_name]* - Name of environment"
                echo "  [-l|--env_link]* - Link to environment git"
                echo "  [-c|--commit_code] - Commit code for specific version"
                exit 1
        esac
        shift
        shift
    done

    # Validate required variables
    check_var "$env_name" "ENV_NAME"
    check_var "$env_link" "ENV_LINK"

    local path_to_download="lib/sources"
    local path_to_new_content_folder="./$env_name"
    local main_folder_name="saas_test"
    local path_to_copy="$main_folder_name/lib/sources/local/."

    # Clone the repository
    cd $path_to_download
    git clone $REPOSITORY_URL $main_folder_name

    if [ -n "$commit_code" ]; then
        cd $main_folder_name
        git checkout $commit_code
        cd ..
    else
        cd $main_folder_name
        git checkout $env_link
        cd ..
    fi

    mkdir $path_to_new_content_folder
    cp -R $path_to_copy $path_to_new_content_folder
    rm -rf $main_folder_name

    setup_config "$path_to_new_content_folder" "$env_name"

    generate_di_code

    generate_environments_list "lib/sources" "lib/application/config"
}

# Function to remove environment
remove_environment() {
    local env_name=""

    while [ $# -gt 1 ]; do
        case "$1" in
            -n|--env_name)
                env_name="$2"
                ;;
            *)
                echo "Available arguments:"
                echo "  [-n|--env_name]* - Environment name"
                exit 1
        esac
        shift
        shift
    done

    # Validate required variable
    check_var "$env_name" "ENV_NAME"

    local path_to_download="lib/sources"
    local path_to_new_content_folder="./$env_name"

    cd $path_to_download
    rm -rf $path_to_new_content_folder

    generate_di_code
    generate_environments_list "lib/sources" "lib/application/config"
}

# Main script logic
printf "\n"
printf "Environment Setup\n"

if ([ -z "$1" ]); then
    echo "Available commands:"
    echo "  add    - Add new active environments to application"
    echo "            [-n|--env_name]* - Name of environment"
    echo "            [-l|--env_link]* - Link to environment git"
    echo "            [-c|--commit_code] - Commit code for specific version"
    echo "  remove - Remove active environments from application"
    echo "            [-n|--env_name]* - Name of environment"
    exit 1
fi

case "$1" in
    add)
        shift
        add_environment $*
        ;;
    remove)
        shift
        remove_environment $*
        ;;
    *)
        echo "Available commands:"
        echo "  add    - Add new active environments to application"
        echo "            [-n|--env_name]* - Name of environment"
        echo "            [-l|--env_link]* - Link to environment git"
        echo "            [-c|--commit_code] - Commit code for specific version"
        echo "  remove - Remove active environments from application"
        echo "            [-n|--env_name]* - Name of environment"
        exit 1
        ;;
esac
