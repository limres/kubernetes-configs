#!/bin/bash
kubectl delete deployments,services,pods,ingress,rc,configmap,pvc,pv \
  -l app=node-script \
  --namespace=default
