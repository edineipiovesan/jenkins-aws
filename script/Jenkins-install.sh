#!/bin/bash

# Update
sudo yum update

# Setup Docker
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on

# Start Jenkins
sudo docker container run --name jenkins-blueocean --detach -u root --volume jenkins-data:/var/jenkins_home --volume /var/run/docker.sock:/var/run/docker.sock --publish 80:8080 --publish 50000:50000 jenkinsci/blueocean
