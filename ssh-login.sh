#!/bin/bash

# Checks if there's an input
if [ -z "$1" ]; then
    echo "No input provided"
    exit 1
fi

if [ -d "$1" ]; then
    {
        read -r username
        read -r host
    } < "$1/credentials.txt"

    sshpass -f $1/password.txt ssh $username@$host
else
    echo "Input should be a Directory"
    exit 1
fi

