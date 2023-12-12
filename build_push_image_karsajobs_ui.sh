#!/bin/bash

# build Docker image dari berkas Dockerfile
# docker build -t ihyaksm/karsajobs-ui:latest .

# build Docker image dari berkas Dockerfile
docker build -t ghcr.io/ihyaksm/karsajobs-ui:latest .

# login ke Docker hub
# echo $PASSWORD_DOCKER_HUB | docker login -u ihyaksm --password-stdin

# login ke github
echo $CR_PAT | docker login ghcr.io -u ihyaksm --password-stdin


# push image ke Docker hub
# docker push ihyaksm/karsajobs-ui:latest

# push image ke github packages
docker push ghcr.io/ihyaksm/karsajobs-ui:latest