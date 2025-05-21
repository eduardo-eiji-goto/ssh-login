#!/bin/bash
#
# Simple script to facilitate connecting to ssh using password

if [ -z "$1" ]; then
    echo "No argument provided"
    exit 1
fi

if [ $# -gt 1 ]
then
    echo "Expected only 1 argument"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Argument input should be a directory"
    exit 1
fi

if [ ! -f "$1/credentials.txt" ]; then
    echo "Credentials file not found in directory"
    exit 1
fi

if [ ! -f "$1/password.txt" ]; then
    echo "Password file not found in directory"
    exit 1
fi

{
    read -r username
    read -r host
} < "$1/credentials.txt"

sshpass -f $1/password.txt ssh $username@$host

