#!/bin/bash

echo "This script deletes files which are older than 30 days."

# Get the path as the first positional argument
path="$1"
echo "Target directory: $path"

# Find and delete files older than 30 days
find $path -mtime +30 -delete

# Check if the command was successful
if [[ $? -eq 0 ]]; then
    echo "Files are successfully deleted."
else
    echo "Deletion encountered an issue."
fi