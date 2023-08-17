#!/usr/bin/bash
set -e

kubectl create -f tigera-operator.yaml
kubectl -n tigera-operator wait deployment tigera-operator --for condition=Available=True --timeout=90s || true
kubectl apply -f calico-init.yaml
