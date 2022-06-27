#!/bin/bash

# Install docker, git, tree & provide docker access to extras
sudo yum install docker git tree -y
sudo amazon-linux-extras install docker
sudo usermod -a -G docker ec2-user
sudo service docker start

# Make docker auto-start
sudo chkconfig docker on


# Install docker-compose plugin
curl -SL https://github.com/docker/compose/releases/download/v2.6.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
cd /usr/local/bin/
uname -s
uname -m
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Fix permissions after download
sudo chmod +x /usr/local/bin/docker-compose

# Verify success
docker-compose version

# restart docker
sudo service docker restart

# Enter in to repositry till you see docker-compose.yml file
cd /home/ec2-user/assignment/docker/

# Builds, creates and start containers
sudo docker-compose up -d
sudo docker ps

