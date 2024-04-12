# helm-zookeeper

## Get Chart

helm repo add bitnami https://charts.bitnami.com/bitnami
helm fetch bitnami/zookeeper --untar

## Helm Install

```bash
kubectl create namespace apache
helm install -n apache zookeeper zookeeper
```

## Check Installation

```bash
kubectl exec -it -n apache zookeeper-0 -- zkCli.sh version
```

```
/opt/bitnami/java/bin/java
Connecting to localhost:2181
ZooKeeper CLI version: 3.9.2-e454e8c7283100c7caec6dcae2bc82aaecb63023, built on 2024-02-12 20:59 UTC
```

## Port-Forward

```bash
kubectl port-forward -n apache svc/zookeeper 2181:2181
```
