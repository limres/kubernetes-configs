#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl delete configmap nginx-template --namespace=system-tools

kubectl create configmap nginx-template \
  --namespace=system-tools \
  --from-file=nginx.tmpl=$DIR/../nginx.tmpl
