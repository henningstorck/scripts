#!/bin/bash

for backup in *.tar.gz; do
    file="$(pwd)/$backup"
    volume=$(echo "$backup" | sed -e 's/[0-9_]*\.tar\.gz//g')
    docker volume create "$volume"
    docker run --rm \
        -v "$volume:/volume" \
        -v "$file:/backup/backup.tar.gz" \
        ubuntu:latest bash -c "cd /volume && tar --same-owner -xzvf /backup/backup.tar.gz --strip 1"
done
