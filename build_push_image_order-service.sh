#!/bin/bash

# build Docker image dari berkas Dockerfile
docker build -t ghcr.io/ihyaksm/order-service:latest .

# login ke github
echo $CR_PAT | docker login ghcr.io -u ihyaksm --password-stdin

# push image ke github packages
docker push ghcr.io/ihyaksm/order-service:latest