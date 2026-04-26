#!/bin/bash

set -e

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install ripgrep

cargo install du-dust

cargo install fd-find

cargo install ast-grep
