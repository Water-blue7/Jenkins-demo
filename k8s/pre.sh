#!/bin/bash

# 项目根文件夹
path=$1
# 镜像名称
imageName=$2


# 不删除也行，会自动覆盖掉旧文件
# rm -rf /root/springboot/jarfile && rm /root/springboot/Dockerfile > /root/springboot/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl delete -f $path/springboot-deployment.yaml  >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl delete -f $path/springboot-service.yaml >> $path/output.log 2>&1
# 停止并删除所有使用 demo 镜像的容器
containers=$(docker ps -aq --filter ancestor=$imageName)
if [ -n "$containers" ]; then
    docker stop $containers >> $path/output.log 2>&1
    docker rm $containers >> $path/output.log 2>&1
fi

# 删除 demo 镜像
docker rmi $imageName >> $path/output.log 2>&1