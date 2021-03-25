#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=arshan2000/my_machine_learning_app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment mymachinelearningapp --image=$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/mymachinelearningapp 8080:80
