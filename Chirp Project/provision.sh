#!/usr/bin/env bash

        # Update package lists
        sudo apt-get update -y
    
        # Install Docker dependencies
        sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    
        # Add Docker GPG key
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
        # Add Docker repository
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    
        # Update package lists again (to include Docker repo)
        sudo apt-get update -y
    
        # Install Docker CE
        sudo apt-get install docker-ce
        sudo apt-get install docker-ce-cli 
        sudo apt-get install containerd.io 
        sudo apt-get install docker-buildx-plugin 
        sudo apt-get install docker-compose-plugin
    
        # Add the "vagrant" user to the "docker" group to run Docker without sudo
        sudo usermod -aG docker vagrant
    
        # Restart Docker service (to apply group changes)
        sudo systemctl restart docker

        docker build -t vagrant/itu-minitwit:latest .
        docker run -d -p 5000:5000 --name itu-minitwit vagrant/itu-minitwit:latest