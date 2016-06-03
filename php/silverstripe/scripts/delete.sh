#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl delete deployments,services,pods,ingress,rc,configmap,pvc,pv \
  -l app=silverstripe \
  --namespace=default
