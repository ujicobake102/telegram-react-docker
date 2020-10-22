#!/bin/bash

# Install rclone static binary
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip

# Install aria2c static binary
wget -q https://github.com/P3TERX/aria2-builder/releases/download/1.35.0_2020.09.04/aria2-1.35.0-static-linux-amd64.tar.gz
tar xf aria2-1.35.0-static-linux-amd64.tar.gz

# Install ffmpeg static binary
wget -q https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
tar xvf ffmpeg-git-amd64-static.tar.xz

mv rclone-*-linux-amd64/rclone aria2c ffmpeg-*-amd64-static/ffmpeg ffmpeg-*-amd64-static/ffprobe /usr/local/bin/

wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht.dat
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat

# Tracker
bash <(curl -fsSL git.io/tracker.sh) "/app/aria2c.conf"

#Peer Agent
echo "peer-id-prefix=-qB4250-$(cat /dev/urandom | tr -dc 'a-zA-Z0-9!~*()._-' | fold -w 12 | head -n 1)" >> /app/aria2c.conf
