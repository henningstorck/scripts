#!/bin/bash

docker rm "$(docker ps --filter status=exited -q)"
docker rm "$(docker ps --filter status=created -q)"
