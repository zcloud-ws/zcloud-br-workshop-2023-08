#!/usr/bin/env bash
scp -i ~/.ssh/edimar.quave root@ing-workshop.zcloud.ws:/etc/rancher/k3s/k3s.yaml ./kubeconf/k3s.yaml.tmp
sed 's/127.0.0.1/ing-workshop.zcloud.ws/g' ./kubeconf/k3s.yaml.tmp > ./kubeconf/k3s.yaml
rm ./kubeconf/k3s.yaml.tmp
chmod 644 ./kubeconf/k3s.yaml
