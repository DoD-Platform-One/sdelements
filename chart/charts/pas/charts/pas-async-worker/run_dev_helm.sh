#!/bin/bash
set -eu

helm dependency update
kubectl get secret pas-minio-ssl-secret || kubectl create secret generic pas-minio-ssl-secret --from-file=../../docker/cert_generator/rootCA.key --from-file=../../docker/cert_generator/rootCA.crt

if helm list | grep -q pas-async-worker; then
  helm upgrade -f values.yaml -f dev-values.yaml pas-async-worker .
else
  helm install -f values.yaml -f dev-values.yaml pas-async-worker .
fi
