#!/bin/bash

sudo apt-get install libopengl0 libegl1 libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-cursor0 libxcb-shape0 libglx0 libfontconfig1
wget https://www.perforce.com/downloads/perforce/r23.4/bin.linux26x86_64/p4v.tgz
sudo mkdir -p /opt/p4merge/
sudo tar -xzf p4v.tgz -C /opt/p4merge/ --strip-components=1
