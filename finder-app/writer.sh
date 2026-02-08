#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required"
    echo "Usage: $0 <file_path> <text_string>"
    exit 1
fi

writefile=$1
writestr=$2

# Get the directory path from the file path
dirpath=$(dirname "$writefile")

# Create the directory path if it doesn't exist
mkdir -p "$dirpath"

# Check if directory creation was successful
if [ $? -ne 0 ]; then
    echo "Error: Could not create directory $dirpath"
    exit 1
fi

# Write the content to the file
echo "$writestr" > "$writefile"

# Check if file creation was successful
if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi

exit 0
