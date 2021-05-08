# a minecraft launcher docker container

based on ubutu 18.04, works with the latest Minecraft.deb from
https://launcher.mojang.com/download/Minecraft.deb (by 2021-05-08).

verified on CentOS 7.

# usage

## install docker nvidia toolkit (assume docker-ce is already installed)
```sh
$ ./docker-nv-tookkit.sh
```

## build docker image

```sh
$ ./build.sh
```

## run minecraft launcher

```sh
$ ./minecraft-launcher.sh
```

