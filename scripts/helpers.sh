#!/bin/bash

function ret() {
  echo "$1"
}

function latest_git_release() {
  ret "$(git rev-list --tags --max-count=1)"
}
