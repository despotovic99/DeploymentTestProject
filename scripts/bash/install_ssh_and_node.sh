#!/bin/bash

# Update package repositories
apt-get update

# Install Node.js and npm
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs

# Install SSH server
apt-get install -y openssh-server

# Configure SSH
mkdir /var/run/sshd
echo 'root:password' | chpasswd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
echo "Port 22" >> /etc/ssh/sshd_config

# Start SSH server
service ssh start

