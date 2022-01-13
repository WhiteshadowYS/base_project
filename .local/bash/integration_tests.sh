#!/bin/bash

# Show docker-compose logs

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "$SCRIPT_DIR/check_env.sh"

pushd "$BP_HOME" || exit
fvm flutter drive --driver=test/driver/integration_driver.dart --target=test/integration/app_tests.dart -d web-server --no-headless
popd || exit


