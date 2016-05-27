#!/bin/bash
IMAGE_BASE_NAME="silverstripe"
DEFAULT_REGISTRY="lcr.lh"
DEFAULT_TAG="latest"

TAG=$1

if [$TAG = ""]; then
  TAG=$DEFAULT_TAG
fi

REGISTRY=$2

if [$REGISTRY = ""]; then
  REGISTRY=$DEFAULT_REGISTRY
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# nginx image
docker build -t $REGISTRY/$IMAGE_BASE_NAME-nginx:$TAG $DIR/../images/nginx
docker push $REGISTRY/$IMAGE_BASE_NAME-nginx:$TAG

# php fpm image
docker build -t $REGISTRY/$IMAGE_BASE_NAME-php:$TAG $DIR/../images/php
docker push $REGISTRY/$IMAGE_BASE_NAME-php:$TAG
