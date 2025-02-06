#!/bin/bash

if [ $# != 2 ]; then
    echo "Usage: restore-volume.sh [volume name] [backup file]"
    exit 1
fi

volume=$1
file=$2

if [ ! -f "$file" ]; then
    echo "Error: $file does not exist."
    exit 1
fi

docker volume create "$volume"
docker run --rm \
    -v "$volume:/volume" \
    -v "$file:/backup/backup.tar.gz" \
    ubuntu:latest bash -c "cd /volume && tar --same-owner -xzvf /backup/backup.tar.gz --strip 1"
