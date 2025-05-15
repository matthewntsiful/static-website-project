#!/bin/bash
# Author: @matthewntsiful
# Date: 2025-05-15
# Version: 1.0.0

# Update packages
# Update the package index and upgrade all packages
sudo apt-get update -y

# Install dependencies
# Install Nginx, Git, and Docker
sudo apt-get install -y \
    nginx \
    git \
    docker.io

# Start and enable services
# Start Nginx and Docker
# Enable Nginx and Docker to start at boot
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl start docker
sudo systemctl enable docker

# Add user to docker group
# Add the current user to the docker group
# This allows the user to run docker commands without needing sudo
sudo usermod -aG docker $USER
