#!/bin/bash

# Manual steps
# pacman -S git

set -e

this_dir=$(realpath $(dirname $BASH_SOURCE))

source "${this_dir}/helpers.sh"

sudo bash "${this_dir}/init.sh"

source "${this_dir}/install_rust.sh"
