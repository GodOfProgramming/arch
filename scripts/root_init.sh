#!/bin/bash

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
  sddm

systemctl enable sddm
