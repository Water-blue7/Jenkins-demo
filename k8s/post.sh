#!/bin/bash

# 项目根文件夹
path=$1
# 镜像名称
imageName=$2

echo "$current_time ==》开始build 新镜像：$imageName" >> $path/output.log 2>&1
docker build -t $imageName $path >> $path/output.log 2>&1
echo "$current_time ==》创建 deployment" >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl apply -f $path/springboot-deployment.yaml >> $path/output.log 2>&1
echo "$current_time ==》创建 service" >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl apply -f $path/springboot-service.yaml >> $path/output.log 2>&1
echo "$current_time ==》Finished" >> $path/output.log 2>&1
