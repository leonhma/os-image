FROM ghcr.io/ublue-os/silverblue-main:latest

# RUN curl https://mise.run | sh

COPY root-packages.txt .
RUN dnf install -y $(cat root-packages.txt)
RUN rm root-packages.txt

RUN dnf clean all

COPY rootfs/ /
