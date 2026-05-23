#!/bin/bash

set -e

if [[ $EUID -ne 0 ]]; then
  echo 'Script must be run as root'
  exit 1
fi

pacman -Syu

pacman -S \
  bash-completion \
  man \
  less \
  base-devel \
  openssh \
  vim \
  nvidia-open \
  nvidia-utils \
  lib32-nvidia-utils \
  wayland \
  wayland-protocols \
  wl-clipboard \
  flatpak \
  plasma-desktop \
  plasma-pa \
  bluedevil \
  kscreen \
  sddm \
  networkmanager

systemctl enable sddm

systemctl stop systemd-networkd
systemctl disable systemd-networkd

systemctl enable networkmanager
systemctl start networkmanager
