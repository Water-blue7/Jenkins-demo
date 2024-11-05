#!/bin/bash

rm -rf /root/springboot/jarfile && rm /root/springboot/Dockerfile > output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl delete -f /root/springboot/springboot-deployment.yaml  >> output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl delete -f /root/springboot/springboot-service.yaml >> output.log 2>&1
# 停止并删除所有使用 demo 镜像的容器
containers=$(docker ps -aq --filter ancestor=demo)
if [ -n "$containers" ]; then
    docker stop $containers >> output.log 2>&1
    docker rm $containers >> output.log 2>&1
fi

# 删除 demo 镜像
docker rmi demo >> output.log 2>&1