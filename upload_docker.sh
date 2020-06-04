#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=rdwns/housepriceapi

# Step 2:
# Authenticate & tag
docker login --username=rdwns
docker tag rdwns/housepriceapi $dockerpath
echo "Docker ID and Image: $dockerpath"


# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath
