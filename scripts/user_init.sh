#!/bin/bash

tmp_dir=$(mktemp)
git clone https://aur.archlinux.org/yay.git "${tmp_dir}"
cd "${tmp_dir}"
makepkg -si
