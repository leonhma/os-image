FROM ghcr.io/ublue-os/silverblue-main:latest

# RUN curl https://mise.run | sh
RUN dnf copr enable alebastr/river && dnf install -y  river

COPY root-packages.txt .
RUN dnf install -y $(cat root-packages.txt)
RUN rm root-packages.txt

RUN dnf clean all

COPY rootfs/ /
