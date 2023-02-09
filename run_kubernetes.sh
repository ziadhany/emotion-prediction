#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ziadhany/classify_emotions_in_english

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app --image=$dockerpath --port=9000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward app 8000:9000

