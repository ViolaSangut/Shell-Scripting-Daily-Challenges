#!/bin/bash

echo "This program gets the first 10 biggest files in the file system passed via positional argument"

path=$1  # Get the directory path from the first argument
echo $path

# Find the biggest files in the given directory and save to a temporary file
du -ah $path | sort -hr | head -n 10 > /tmp/filesize.txt

# Display the result
echo "This is the list of big files in the file system $path"
cat /tmp/filesize.txt