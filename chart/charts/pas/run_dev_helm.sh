#!/bin/bash
set -eu

helm dependency update

if helm list | grep -q pas; then
  helm upgrade -f values.yaml -f dev-values.yaml pas .
else
  helm install -f values.yaml -f dev-values.yaml pas .
fi
