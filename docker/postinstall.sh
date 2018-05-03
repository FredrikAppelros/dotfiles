#!/bin/sh

# Create the the current user to the docker group
sudo usermod -aG docker "$USER"

# Start on boot
if [ "$(lsb_release -r | grep -oP "Release:\s\K\d+")" -gt 14 ]; then
  sudo systemctl enable docker
fi

# Configure local DNS servers
nmcli d show enp0s31f6 | grep IP4.DNS | awk '{print $2}' \
  | jq -sR '{dns: rtrimstr("\n")|split("\n")}' \
  |  sudo tee /etc/docker/daemon.json > /dev/null

# Restart the docker service
sudo systemctl restart docker.service

# Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    sudo chmod +x /usr/local/bin/docker-compose
