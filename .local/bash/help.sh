#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source "$SCRIPT_DIR/check_env.sh"

default_home="$( cd "$SCRIPT_DIR/../.." && pwd)"
default_name=$(basename $default_home)
PROJECT_HOME=$(echo "$default_name" | tr a-z A-Z)
PROJECT_HOME_NAME="${PROJECT_HOME}_HOME"
PROJECT_HOME=$(eval echo \$$PROJECT_HOME_NAME)

cat << EOF
$PROJECT_HOME_NAME development environment.
Commands:
  cd - navigate to the BP_HOME directory
  help - print this help message
EOF
