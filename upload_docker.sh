#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=adegokem/capstone

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag capstone $dockerpath
#docker login --username=adegokem
docker login -u="$DOCKERHUB_USERNAME" -p="$DOCKERHUB_PASSWORD"
docker tag capstone adegokem/capstone

# Step 3:
# Push image to a docker repository
docker push $dockerpath