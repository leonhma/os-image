FROM ghcr.io/ublue-os/silverblue-main:latest

RUN dnf install -y git zsh

RUN dnf clean all

COPY rootfs/ /
