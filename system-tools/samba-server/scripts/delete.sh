#!/bin/bash
K8S_NAMESPACE="system-tools"

#
cd "$(dirname "${BASH_SOURCE[0]}")"

# delete everything from development environment
kubectl delete configmap,deployments,ing,ns,pods,pv,pvc,rc,svc \
  -l app=samba-server \
  --namespace=$K8S_NAMESPACE
