#!/bin/bash
set -eu

helm dependency update

if helm list | grep -q pas-async-worker; then
  helm upgrade -f values.yaml -f dev-values.yaml pas-async-worker .
else
  helm install -f values.yaml -f dev-values.yaml pas-async-worker .
fi
