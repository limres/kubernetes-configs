#!/bin/bash
IMAGE_BASE_NAME="registry"
DEFAULT_REGISTRY="limres"
DEFAULT_TAG="latest"

TAG=$1

if [$TAG = ""]; then
  TAG=$DEFAULT_TAG
fi

REGISTRY=$2

if [$REGISTRY = ""]; then
  REGISTRY=$DEFAULT_REGISTRY
fi

cd "$( dirname "${BASH_SOURCE[0]}" )";

# nginx image
docker build -t $REGISTRY/$IMAGE_BASE_NAME-nginx:$TAG ../images/nginx
docker push $REGISTRY/$IMAGE_BASE_NAME-nginx:$TAG
