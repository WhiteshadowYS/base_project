#!/bin/bash

#--------IMPORTANT---------
#--------------------------
# To use check_flutter_version() paste to command line:
# bash lib/scripts/check_flutter_version.sh
#--------------------------
#--------------------------

# Colors, are used to stylize echo text.
# To use with printf no paste ${YOUR_COLOR} into string.
# To use with echo no paste ${YOUR_COLOR} into string and between echo and string add -e.
RED='\033[0;31m'
ORANGE='\033[0;33m'
GREEN='\033[0;32m'

# This is a used project version.
PROJECT_FLUTTER_VERSION='1.20.4'

function check_flutter_version() {
  # Get flutter version.
  flutter_version=$(flutter --version)

  # Since flutter --version produces a lot of parameters in the output,
  # we are looking at the presence of the necessary version in the string.
  if [[ $flutter_version == *"$PROJECT_FLUTTER_VERSION"* ]]
  then
      echo -e "${GREEN}Flutter version $PROJECT_FLUTTER_VERSION. No action required."
  else
      echo -e "${ORANGE}The current version of Flutter does not fit. Updating..."
      # update flutter channel to stable
      # then update flutter version to $PROJECT_FLUTTER_VERSION
      # and paste "y" to command line - Needed to validate [yes/no]
      flutter channel stable && flutter version v$PROJECT_FLUTTER_VERSION & y
  fi
}

check_flutter_version