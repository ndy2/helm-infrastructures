# helm-cassandra

## Get Chart

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm fetch bitnami/cassandra --untar
```

## Helm Install

```
kubectl create namespace apache
helm install -n apache cassandra cassandra -f values.local.yaml
```

## Check Installation

```
// get password
kubectl get secret -n apache cassandra -o jsonpath={.data.cassandra-password} | base64 --decode

// enter cqlsh with default user
kubectl exec -it -n apache cassandra-0 -- cqlsh -u cassandra
```
