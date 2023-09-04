#!/bin/bash
########################################################
## Shell Script to Build Docker Image by AMEER HAMZA
########################################################
sudo apt-get update
git clone https://github.com/AMEER-HAMZA-MAU/Sample-Social-Media-Application-using-MERN-Stack.git
cd /home/hamza/Sample-Social-Media-Application-using-MERN-Stack/
echo "build the docker image"
sudo docker build . -t mernstack:latest >> /home/hamza/Sample-Social-Media-Application-using-MERN-Stack/Dockerfile
echo "Deploying the updated container"
sudo docker container run -p 3000:3000 mernstack:latest
