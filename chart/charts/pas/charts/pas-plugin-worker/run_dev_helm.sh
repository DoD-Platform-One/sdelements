#!/bin/bash
set -eu

helm dependency update

if helm list | grep -q pas-plugin-service; then
  helm upgrade -f values.yaml -f dev-values.yaml pas-plugin-service .
else
  helm install -f values.yaml -f dev-values.yaml pas-plugin-service .
fi
