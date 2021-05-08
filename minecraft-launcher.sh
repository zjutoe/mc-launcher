#!/usr/bin/env bash

# Expose the X server on the host.
sudo xhost +local:root

docker run --rm \
    --gpus all \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    --device /dev/snd/ \
    -v $HOME/.minecraft:/root/.minecraft \
    mye/mc-launcher
