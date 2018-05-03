#!/bin/sh

# Create the docker group and add myself
sudo usermod -aG docker "$(whoami)"

# Start on boot
if [ "$(lsb_release -r | grep -oP "Release:\s\K\d+")" -gt 14 ]; then
  sudo systemctl enable docker
fi

# Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    sudo chmod +x /usr/local/bin/docker-compose
