#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install just

workspace="${HOME}/workspace"

cd "${workspace}"

git clone 'https://github.com/pop-os/cosmic-epoch.git'
cd cosmic-epoch
git checkout epoch-1.0.11
just build

cd "${workspace}"

git clone 'https://github.com/wezterm/wezterm.git'
cd wezterm
git submodule update --init --recursive
./get-deps
cargo build --release
cargo install --path .
