FROM ubuntu:18.04

LABEL maintainer="Toe Zju (zjutoe@gmail.com)"

# Dependencies for glvnd and X11.

RUN apt-get update \
  && apt-get install -y -qq --no-install-recommends \
    libglvnd0 \
    libgl1 \
    libglx0 \
    libegl1 \
    libxext6 \
    libx11-6 \
    curl wget ca-certificates \
    default-jre \
    && wget https://launcher.mojang.com/download/Minecraft.deb -O /root/Minecraft.deb \
    && apt install -y /root/Minecraft.deb \
    && rm -rf /var/lib/apt/lists/*  

# Env vars for the nvidia-container-runtime.
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES graphics,utility,compute

CMD [ "minecraft-launcher" ]
