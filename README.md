s3cmd in Docker

Just building an up-to-date version (2.3.0 as of today) into Docker, mainly to
using in K8s.

Simply edit `VERSION` in `Dockerfile`, then build and push to update.

```
docker buildx build --platform linux/amd64 -t <your-space>/s3cmd:latest --push .
```

To run in K8s cluster

```
kubectl run s3cmd --image robbash/s3cmd -- tail -f /dev/null
```

Connect

```
kubectl exec s3cmd -it -- sh
```

Configure s3cmd

```
s3cmd --configure
```
