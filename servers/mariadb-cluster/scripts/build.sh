#!/bin/bash
IMAGE_BASE_NAME="mariadb"
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
docker build -t $REGISTRY/$IMAGE_BASE_NAME-database:$TAG $DIR/../images/database
docker push $REGISTRY/$IMAGE_BASE_NAME-database:$TAG
