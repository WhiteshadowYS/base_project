#!/bin/bash

# Show docker-compose logs

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "$SCRIPT_DIR/check_env.sh"

pushd "$BP_HOME" || exit
fvm flutter pub run build_runner build
popd || exit


