#!/bin/bash


this_dir=$(realpath $(dirname $BASH_SOURCE))

source "${this_dir}/helpers.sh"

_latest_release
