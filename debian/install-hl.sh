#!/bin/bash

sudo mkdir -p /opt/hl/
curl -sSfL https://github.com/pamburus/hl/releases/latest/download/hl-linux-x86_64-musl.tar.gz | sudo tar xz -C /opt/hl/
ln -s /opt/hl/hl "$HOME/bin/hl"
