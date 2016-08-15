#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl delete configmap,deployments,ing,ns,pods,pv,pvc,rc,svc \
  -l app=phpmyadmin \
  --namespace=default
