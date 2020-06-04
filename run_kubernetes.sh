#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rdwns/housepriceapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run housepriceapi --image=$dockerpath --port=80



# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "sleeping for 150 seconds while waiting for pod to come up"
sleep 150
kubectl port-forward housepriceapi 8000:80
kubectl logs `kubectl get pods -o=name`