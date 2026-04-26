#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo 'Script must be run as root'
  exit 1
fi

this_dir=$(realpath $(dirname $BASH_SOURCE))

source "${this_dir}/helpers.sh"

pacman -Syu

pacman -S \
  wayland \
  wayland-protocols \
  base-devel \
  libxkbcommon \
  libinput \
  libdisplay-info \
  seatd \
  pixman \
  flatpak \
  xdg-utils

git clone https://aur.archlinux.org/yay.git
cd yay
git checkout "$(latest_git_release)"
makepkg -si
