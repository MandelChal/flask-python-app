#!/bin/bash
cd /opt/myapp
sudo docker pull michalmn/aws-deployment-img:latest
sudo docker run -d --name myapp-container -p 80:5000 michalmn/aws-deployment-img:latest