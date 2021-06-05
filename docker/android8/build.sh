#!/bin/bash

set -eo pipefail; [[ "$TRACE" ]] && set -x

if [ ! -f ~/.gitconfig ]; then
  echo "Please git-config first."
  exit 1
fi

cp ~/.gitconfig gitconfig

docker build --build-arg username=$(id -un) -t android-build-trusty .
