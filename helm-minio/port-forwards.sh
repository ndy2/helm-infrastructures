kubectl  port-forward -n minio svc/minio 9000:443 &
kubectl  port-forward -n minio svc/tenant-console 9443:9443 &
kubectl  port-forward -n minio svc/console 9090:9090 &
