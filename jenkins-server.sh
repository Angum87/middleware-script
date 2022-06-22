i#!/bin/bash

#Author: sylvestre

#Date:june 21 2022

echo "1- Install Java"

sudo yum install java-1.8.0-openjdk-devel

echo "Step 2: Enable the Jenkins repository"

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

if [ $? -eq 0]

then

yum install wget -y

fi

echo "Disable key check on the repo"

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo