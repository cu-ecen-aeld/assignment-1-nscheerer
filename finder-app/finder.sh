#!/bin/sh
# Assignment 1 finder script 
# Author: Nathaniel Scheerer

if [ $# -lt 2 ] 
then 
    echo "Missing runtime argument"
    exit 1
fi 

FILEDIR=$1
SEARCHSTR=$2

if [ -d "${FILEDIR}" ] 
then
    X=$(find $FILEDIR -type f | wc -l)
    Y=$(grep -r $SEARCHSTR $FILEDIR | wc -l)
    echo "The number of files are ${X} and the number of matching lines are ${Y}" 
    exit 0
else
    echo "Directory does not exist"
    exit 1
fi
