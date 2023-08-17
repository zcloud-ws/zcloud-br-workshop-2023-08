#!/usr/bin/env bash

CHART_VERSION=45.31.1
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts || true
helm repo update prometheus-community

helm upgrade --install kube-prometheus prometheus-community/kube-prometheus-stack \
  --namespace metrics --create-namespace --history-max 3 \
  --version "${CHART_VERSION}" --values values.yaml
