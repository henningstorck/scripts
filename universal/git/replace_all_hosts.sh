#!/bin/bash

set -e

if [ $# != 2 ]; then
    echo "Usage: replace_all_hosts.sh [old host] [new host]"
    exit 1
fi

old_host=$1
new_host=$2

for file in */.git/config; do
	sed -i.bak "s|$old_host|$new_host|g" "$file"
	# rm "$file.bak"
done
