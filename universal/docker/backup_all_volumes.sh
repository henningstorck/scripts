#!/bin/bash

set -e

for volume in $(docker volume ls -q); do
    "$(dirname "$0")/backup_volume.sh" "$volume"
done
