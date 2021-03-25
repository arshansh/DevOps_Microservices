#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=arshan2000/my_machine_learning_app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag  my_machine_learning_app:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
