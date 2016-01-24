#!/bin/sh

codename=$(lsb_release -c | grep -oP "Codename:\s\K\w+")

# Add the Docker repository signing key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Add the Docker repository
echo deb https://apt.dockerproject.org/repo ubuntu-$codename main | sudo tee /etc/apt/sources.list.d/docker.list
