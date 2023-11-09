#! /bin/bash

apt update
apt install -y docker.io 
apt install -y ruby-full
apt install -y wget

cd /home/ubuntu

wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
./install auto

service codedeploy-agent start