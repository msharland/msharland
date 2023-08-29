#!/bin/bash
 
# Updates
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade

 # Install Git
 sudo yum install git -y

# Install Docker
sudo yum install docker -y

# Enable Docker
sudo systemctl enable docker

# Install Java 11 (Amazon Linux 2)
sudo amazon-linux-extras install java-openjdk11 -y

# Install Jenkins
sudo yum install jenkins -y

# Enable Jenkins
sudo systemctl enable jenkins

# Create Jenkins to user Docker
sudo usermod -a -G docker jenkins

# Start Docker
sudo systemctl start docker

# Start Jenkins
sudo systemctl start jenkins
 