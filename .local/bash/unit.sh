#!/bin/bash

# Show docker-compose logs

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "$SCRIPT_DIR/check_env.sh"

pushd "$BP_HOME" || exit
flutter test
popd || exit


