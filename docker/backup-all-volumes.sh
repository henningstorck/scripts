#!/bin/bash

for volume in $(docker volume ls -q); do
    "$(dirname "$0")/backup-volume.sh" "$volume"
done
