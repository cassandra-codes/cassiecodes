#! /bin/bash

apt update
apt install -y docker.io 
apt install -y ruby-full
apt install -y wget

cd /home/ubuntu

# Install docker compose
curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Install and start codedeploy-agent
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start