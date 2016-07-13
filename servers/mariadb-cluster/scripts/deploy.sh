#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl create \
  -f $DIR/../deployment.yaml \
  -f $DIR/../service.yaml
