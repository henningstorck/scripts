#!/bin/bash

containers="$(docker ps -a -q)"

if [ -z "$containers" ]; then
    echo "No containers found."
    exit 0
fi

for container in $containers; do
    docker start "$container"
done
