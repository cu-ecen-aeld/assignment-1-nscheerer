#!/bin/sh
# Assignment 1 finder script 
# Author: Nathaniel Scheerer

if [ $# -lt 2 ] 
then 
    echo "Missing runtime argument"
    exit 1
fi 

WRITEFILE=$1
WRITESTR=$2

# Extract directory path from the full file path
DIRPATH=$(dirname "$WRITEFILE")

# Create directory if it does not exist
mkdir -p "$DIRPATH"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory path $DIRPATH"
    exit 1
fi

echo "$WRITESTR" > "$WRITEFILE"
