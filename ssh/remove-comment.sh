#!/bin/bash

if [ $# != 1 ]; then
    echo "Usage: remove-comment.sh [key file]"
    exit 1
fi

file=$1

ssh-keygen -c -C "" -f "$file"
