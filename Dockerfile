FROM debian:stretch

LABEL \
      com.github.lnlsdig.docker.dockerfile="Dockerfile" \
      com.github.lnlsdig.vcs-type="Git" \
      com.github.lnlsdig.vcs-url="https://github.com/lnls-dig/docker-debian-nfs-image.git"

ADD data/rootfs.tar.xz /nfsroot

VOLUME /nfsroot
