#!/bin/bash

if [ $# != 1 ]; then
    echo "Usage: check-hdd.sh [healthcheck URL]"
    exit 1
fi

url=$1
treshold=80
usage=$(df --output=pcent / | tr -dc '0-9')

if ((usage < treshold)); then
    curl "$url"
fi
