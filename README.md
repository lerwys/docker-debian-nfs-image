debian-nfs-image in a container
===============================

Overview
--------

This image may serve as a volume to a NFS docker.

### Build root filesystem

    git clone https://github.com/lerwys/debian-debootstrap
    cd debian-debootstrap
    sudo apt-get -y install debootstrap qemu-user-static && \
        ARCH=amd64 \
        INCLUDE=wget \
        QEMU_ARCH=x86_64 \
        SUITE=stretch \
        UNAME_ARCH=x86_64 \
        VERSION=stretch && \
    sudo ./update.sh \
        -a "$ARCH" \
        -v "$VERSION" \
        -q "$QEMU_ARCH" \
        -u "$QEMU_VER" \
        -d "$DOCKER_REPO" \
        -s "$SUITE" \
        -i "$INCLUDE" \
        -o "$UNAME_ARCH"
    cp stretch/rootfs.tar.xz data/

### Build image with docker

    docker build -t lnlsdig/debian-nfs-image .
