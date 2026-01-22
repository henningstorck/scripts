#!/bin/bash

set -e

if [ $# != 1 ]; then
    echo "Usage: backup_volume.sh [volume name]"
    exit 1
fi

volume=$1
date=$(date "+%Y%m%d_%H%M%S")

docker run --rm \
    -v "$volume:/volume" \
    -v "$(pwd):/backup" \
    ubuntu:latest tar czvf "/backup/${volume}_${date}.tar.gz" /volume
