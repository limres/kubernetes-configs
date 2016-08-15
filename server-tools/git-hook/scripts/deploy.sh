#!/bin/bash
DEFAULT_ACTION="apply"

cd "$(dirname "${BASH_SOURCE[0]}")"

# apply, create, replace
ACTION=$1

if ["$ACTION" = ""]; then
  ACTION=$DEFAULT_ACTION
fi

kubectl $ACTION \
  -f ../deployment.yml \
  -f ../service.yml \
  -f ../ingress.yml
