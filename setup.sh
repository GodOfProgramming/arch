#!/bin/bash

set -e

this_dir=$(realpath $(dirname $BASH_SOURCE))

source "${this_dir}/scripts/helpers.sh"

bash "${this_dir}/scripts/init.sh"

source "${this_dir}/scripts/rust.sh"
