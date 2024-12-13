#!/bin/bash

# Function to extract classes and IDs from an HTML file and generate JavaScript variables
extract_classes_and_ids() {
    local html_file="$1"
    local output_file="$2"

    # Use grep and sed to extract classes and IDs
    classes=$(grep -o 'class="[^"]*"' "$html_file" | sed -E 's/class="([^"]*)"/\1/' | tr ' ' '\n' | sort -u)
    ids=$(grep -o 'id="[^"]*"' "$html_file" | sed -E 's/id="([^"]*)"/\1/' | sort -u)

    # Prepare JavaScript variables
    echo "// JavaScript Selectors" > "$output_file"
    
    echo "// Classes" >> "$output_file"
    for class in $classes; do
        echo "const ${class//-/} = document.querySelector('.$class');" >> "$output_file"
    done

    echo "" >> "$output_file"

    echo "// IDs" >> "$output_file"
    for id in $ids; do
        echo "const ${id//-/} = document.querySelector('#$id');" >> "$output_file"
    done
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <html_file> <output_file>"
    exit 1
fi

# Call the function with the provided arguments
extract_classes_and_ids "$1" "$2"

