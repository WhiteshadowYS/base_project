#!/bin/bash

# Check that the current environment is suitable to run commands

if [ -z "$BP_HOME" ]; then
    echo >&2 "Environment variable BP_HOME is not found."
    exit 1
fi

if [ ! -d "$BP_HOME" ]; then
    echo >&2 "Base Project Home's home directory $BP_HOME does not exist."
    exit 1
fi

if [ ! -d "$BP_HOME/.local" ]; then
    echo >&2 "Base Project Home's home directory $BP_HOME is invalid."
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