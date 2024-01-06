#!/bin/bash

# Define the directory to move files to
destination="approved"

# Create the directory if it doesn't exist
mkdir -p "$destination"

# Loop through all files in the current directory
for file in *; do
    # Check if the file is not one of the excluded files
    if [ -f "$file" ] && [[ "$file" != "CONTRIBUTING.md" && "$file" != "CODE_OF_CONDUCT.md" && "$file" != "README.md" ]]; then
        # Move the file to the destination directory
        mv "$file" "$destination/"
    fi
done

echo "Files moved successfully."
