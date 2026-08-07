FROM ghcr.io/ublue-os/silverblue-main:latest

RUN dnf install -y git zsh chezmoi mise dejavu-sans-font wayland-devel wayland-protocols-devel starship rio helix nmap openssl-devel jetbrains-mono-fonts lz4 lz4-devel rocm-hip rocm-opencl

RUN dnf clean all

COPY rootfs/ /
