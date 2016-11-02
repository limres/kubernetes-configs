#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl apply \
  -f $DIR/../default-backend-controller.yaml \
  -f $DIR/../default-backend-service.yaml \
  -f $DIR/../nginx-ingress-configmap.yaml \
  -f $DIR/../nginx-ingress-controller.yaml
