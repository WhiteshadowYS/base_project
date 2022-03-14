#!/bin/bash

# Print help message

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "$SCRIPT_DIR/check_env.sh"

cat << EOF
Base Project development environment.

Commands:
  cd - navigate to the BP_HOME directory
  help - print this help message
EOF
