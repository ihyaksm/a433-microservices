#!/bin/bash

# membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image item-app dengan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format github packages
docker tag item-app:v1 ghcr.io/ihyaksm/item-app:v1

# Login ke docker hub
# echo $PASSWORD_DOCKER_HUB | docker login -u ihyak --password-stdin
# Login ke github packages
echo $PAT | docker login ghcr.io --username ihyaksm --password-stdin

# Mengunggah image ke github packages
docker push ghcr.io/ihyaksm/item-app:v1