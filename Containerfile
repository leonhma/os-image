FROM ghcr.io/ublue-os/silverblue-main:latest

RUN curl https://mise.run | sh

RUN dnf install -y $(cat root-packages.txt)

RUN dnf clean all

COPY rootfs/ /
