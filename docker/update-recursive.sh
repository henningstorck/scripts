#!/bin/bash

docker_compose_files=$(find . -name docker-compose.yml)
current_dir=$(pwd)

for docker_compose_file in $docker_compose_files; do
    docker_compose_dir=$(dirname "$docker_compose_file")
    cd "$docker_compose_dir" || exit

    if [ -f .env.example ] && [ ! -f .env ]; then
        echo "Skipping update: No .env file found in $docker_compose_dir."
        cd "$current_dir" || exit
        continue
    fi

    running_services="$(docker compose ps --services --filter status=running)"

    if [ -z "$running_services" ]; then
        echo "Skipping update: No running services found in $docker_compose_file."
        cd "$current_dir" || exit
        continue
    fi

    echo "Updating $docker_compose_file..."

    docker compose pull
    docker compose up -d

    cd "$current_dir" || exit
done
