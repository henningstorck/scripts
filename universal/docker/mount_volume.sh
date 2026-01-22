#!/bin/bash

set -e

if [ $# != 1 ]; then
    echo "Usage: mount_volume.sh [volume name]"
    exit 1
fi

volume=$1

docker run --rm -it \
    -v "$volume:/volume" \
    ubuntu:latest
