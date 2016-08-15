#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")"

# delete everything from development environment
kubectl delete configmap,deployments,ing,ns,pods,pv,pvc,rc,svc \
  -l app=git-hook
