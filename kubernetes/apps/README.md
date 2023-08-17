# Pré requisitos para deploy

- Ter configurado a variável `KUBECONFIG` apontanda para o arquivo de acesso ao cluster.
- Ter instalado na máquina local a ferramenta `kubectl`

## Pod

```shell
kubectl apply -f pod/
```

## Deployment

```shell
kubectl apply -f deployment/
```

## Auto-Scale

```shell
kubectl apply -f auto-scale/
```
