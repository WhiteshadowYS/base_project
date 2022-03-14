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
read -rp "Location of Base Project - ($default_home): " BP_HOME
BP_HOME=${BP_HOME:-$default_home}


# Create system-wide aliases for common commands
function do_create_environment() {
    echo "Creating Base Project environment..."

    alias_target_file="$HOME/.bash_aliases"
    if [ ! -f "$alias_target_file" ]; then
        echo "#!/bin/bash" > "$alias_target_file"
    fi

    # Remove old environment (if any)
    sed -i 'H;1h;$!d;x;s/# Start Base Project env.*# End Base Project env//g' "$alias_target_file"

    # Create new environment
    cat >> "$alias_target_file" <<EOF
# Start Base Project env

# Execute Base Project scripts for local development purposes
function bp() {
    export BP_HOME=$BP_HOME

    script_name=\$1
    shift

    case \$script_name in
        -h|--help|?|"")
            bash "\$BP_HOME/.local/bash/help.sh"
            ;;
        cd)
            # We have to stay in the same shell to make cd work as expected
            cd \$BP_HOME
            return 0
            ;;
        manage.py)
            # A shortcut for python manage.py commands
            script_path="\$BP_HOME/.local/bash/exec.sh"
            bash "\$script_path" backend python manage.py "\$@"
            ;;
        *)
            script_path="\$BP_HOME/.local/bash/\$script_name.sh"
            bash "\$script_path" "\$@"
            ;;
    esac
}

# End Base Project env
EOF

    echo "Base Project environment is created."
    return 0
}

if [ "$CREATE_ENVIRONMENT" == "true" ]; then
    do_create_environment
fi
