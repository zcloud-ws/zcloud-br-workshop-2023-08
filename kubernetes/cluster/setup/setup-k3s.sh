#!/usr/bin/env bash
export INSTALL_K3S_CHANNEL=v1.27
export INSTALL_K3S_EXEC=server
export PUBLIC_IP
export PRIVATE_IP
export CLUSTER_TOKEN

PUBLIC_IP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
PRIVATE_IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
# O token está sendo alterado propositalmente.
# Para fazer join de outros servidores é preciso que o token seja o mesmo que o servidor principal.
CLUSTER_TOKEN="$(date | base64)"

mkdir -p /etc/rancher/k3s/ || true

cat <<EOF > /etc/rancher/k3s/config.yaml
node-name: main-1
node-label:
  - "infra.zcloud.ws/node_type=main"
token: ${CLUSTER_TOKEN}
cluster-cidr: "172.16.0.0/20"
service-cidr: "172.18.0.0/20"
cluster-domain: "zcloud.local"
advertise-address: ${PUBLIC_IP}
node-ip: ${PRIVATE_IP}
node-external-ip: ${PUBLIC_IP}
write-kubeconfig-mode: "0644"
disable:
  - traefik
  - metrics-server
disable-network-policy: true
flannel-backend: none
cluster-init: true

EOF

apt-get update
curl -sfL https://get.k3s.io | sh -
