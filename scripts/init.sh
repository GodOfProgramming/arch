#!/bin/bash

this_dir=$(realpath $(dirname $BASH_SOURCE))

source "${this_dir}/helpers.sh"

sudo bash "${this_dir}/root_init.sh"

bash user_init.sh
