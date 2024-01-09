#!/bin/bash
echo "Starting script..."
sudo apt-get update -y &&
echo "Updated package lists..."

sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common &&
echo "Installed necessary packages..."

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
echo "Added Docker's official GPG key..."

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
echo "Added Docker repository..."

sudo apt-get update -y &&
echo "Updated package lists again..."

sudo sudo apt-get install docker-ce docker-ce-cli containerd.io -y &&
echo "Installed Docker..."

sudo usermod -aG docker $USER
newgrp docker