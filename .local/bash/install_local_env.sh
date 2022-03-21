#!/bin/bash

# Install local development environment for Base Project Home

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

CREATE_ENVIRONMENT="true"
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --no-environment) CREATE_ENVIRONMENT="false" ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done


default_home="$( cd "$SCRIPT_DIR/../.." && pwd)"
default_name=$(basename $default_home)

HOME_=$(echo "$default_name" | tr a-z A-Z)
HOME_="${HOME_}_HOME"

read -rp "Location of Project - ($default_home): " PROJECT_HOME
PROJECT_HOME=${PROJECT_HOME:-$default_home}

# Create system-wide aliases for common commands
function do_create_environment() {
    echo "Creating Project environment..."
    enterComment="# Start $default_name env"
    closerComment="# End $default_name env"
    alias_target_file="$HOME/.bash_aliases"

    if [ ! -f "$alias_target_file" ]; then
        echo "#!/bin/bash" > "$alias_target_file"
    fi

    # Remove old environment (if any)
    sudo sed -i "" "H;1h;\$!d;x;s|${enterComment}.*${closerComment}||g" $alias_target_file

    # Create new environment
    cat >> "$alias_target_file" <<EOF
$enterComment
# Execute $default_name scripts for local development purposes
function $default_name() {
    export $HOME_=$PROJECT_HOME

    script_name=\$1
    shift

    case \$script_name in
        -h|--help|?|"")
            bash "\$$HOME_/.local/bash/help.sh"
            ;;
        cd)
            # We have to stay in the same shell to make cd work as expected
            cd \$$HOME_
            return 0
            ;;
        manage.py)
            # A shortcut for python manage.py commands
            script_path="\$$HOME_/.local/bash/exec.sh"
            bash "\$script_path" backend python manage.py "\$@"
            ;;
        *)
            script_path="\$$HOME_/.local/bash/\$script_name.sh"
            bash "\$script_path" "\$@"
            ;;
    esac
}
$closerComment
EOF
    echo "Project environment is created."
    return 0
}

if [ "$CREATE_ENVIRONMENT" == "true" ]; then
    do_create_environment
fi
