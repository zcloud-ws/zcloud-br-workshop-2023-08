#!/usr/bin/bash
set -e

kubectl apply -f cert-manager.yaml
# Espera para que p webhook esteja disponível para criar o cluster issuer.
kubectl wait deployment -n cert-manager cert-manager-webhook --for condition=Available=True --timeout=90s
kubectl apply -f cert-manager-cluster-issuer.yaml --validate=false
