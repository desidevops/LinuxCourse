#!/bin/bash

# Check if the correct number of arguments is passed
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename> <string>"
    exit 1
fi

# Assign the arguments to variables
filename=$1
search_string=$2

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File does not exist!"
    exit 2
fi

# Check if the file contains the string
if grep -q "$search_string" "$filename"; then
    echo "String found!"
else
    echo "String not found!"
fi
