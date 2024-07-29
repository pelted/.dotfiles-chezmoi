#!/bin/bash

# Input YAML file
input_file="$HOME/.config/system_defaults.yaml"

# Function to trim whitespace
trim() {
    echo "$1" | xargs
}

# Parse the YAML file using yq
domains=$(yq e 'keys | .[]' "$input_file")

# Iterate through each domain
for domain in $domains; do
    keys=$(yq e ".\"$domain\" | keys | .[]" "$input_file")
    
    for key in $keys; do
        value=$(yq e ".\"$domain\".\"$key\"" "$input_file")

        # Determine type of value (boolean, integer, float, or string)
        if [[ $value == "true" || $value == "false" ]]; then
            value_type="-bool"
        elif [[ $value =~ ^[0-9]+$ ]]; then
            value_type="-int"
        elif [[ $value =~ ^[0-9]*\.[0-9]+$ ]]; then
            value_type="-float"
        else
            value_type="-string"
            value="\"$value\""
        fi

        # Construct and execute the defaults command
        cmd="defaults write $domain $key $value_type $value"
        echo "Executing: $cmd"
        eval $cmd
    done
done

# Restart Dock to apply changes, if any Dock settings were changed
if grep -q "com.apple.dock" "$input_file"; then
    killall Dock
    echo "Dock restarted to apply changes."
fi

echo "All commands executed."