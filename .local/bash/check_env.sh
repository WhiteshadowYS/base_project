#!/bin/bash

default_home="$( cd "$SCRIPT_DIR/../.." && pwd)"
default_name=$(basename $default_home)
PROJECT_HOME=$(echo "$default_name" | tr a-z A-Z)
PROJECT_HOME_NAME="${PROJECT_HOME}_HOME"
PROJECT_HOME=$(eval echo \$$PROJECT_HOME_NAME)

# Check that the current environment is suitable to run commands
if [ -z "$PROJECT_HOME" ]; then
    echo >&2 "Environment variable BP_HOME is not found."
    exit 1
fi

if [ ! -d "$PROJECT_HOME" ]; then
    echo >&2 "$default_name Home's home directory $PROJECT_HOME_NAME does not exist."
    exit 1
fi

if [ ! -d "$PROJECT_HOME/.local" ]; then
    echo >&2 "$default_name home directory $PROJECT_HOME_NAME is invalid."
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo >&2 "Docker is not installed in the system."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo >&2 "Docker Compose is not installed in the system."
    exit 1
fi