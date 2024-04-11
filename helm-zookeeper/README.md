# helm-zookeeper

## Get Chart
helm repo add bitnami https://charts.bitnami.com/bitnami
helm fetch bitnami/zookeeper --untar

## Helm Install
```
kubectl create namespace apache
helm install -n apache zookeeper zookeeper
```


