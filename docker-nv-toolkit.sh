#!/usr/bin/env bash

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.repo | sudo tee /etc/yum.repos.d/nvidia-docker.repo

sudo yum clean expire-cache
sudo yum install -y nvidia-docker2
sudo systemctl restart docker

sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
