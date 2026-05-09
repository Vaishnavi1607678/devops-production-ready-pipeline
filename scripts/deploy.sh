#!/bin/bash

apt update -y
apt install -y docker.io

systemctl start docker
systemctl enable docker

docker pull your-dockerhub-username/devops-app:latest

docker run -d -p 3000:3000 your-dockerhub-username/devops-app:latest