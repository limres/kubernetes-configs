#!/bin/bash
IMAGE_BASE_NAME="git-hook"
DEFAULT_REGISTRY="lcr.lh"
DEFAULT_TAG="latest"

#
cd "$(dirname "${BASH_SOURCE[0]}")"

TAG=$1

if [$TAG = ""]; then
  TAG=$DEFAULT_TAG
fi

REGISTRY=$2

if [$REGISTRY = ""]; then
  REGISTRY=$DEFAULT_REGISTRY
fi

docker build -t $REGISTRY/$IMAGE_BASE_NAME:$TAG ../images/git-hook
docker push $REGISTRY/$IMAGE_BASE_NAME:$TAG
