#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl apply \
  -f $DIR/../secret.yaml \
  -f $DIR/../controller.yaml \
  -f $DIR/../service.yaml \
  -f $DIR/../ingress.yaml
