#!/bin/bash

# 项目根文件夹
path=$1
# 镜像名称
imageName=$2

docker build -t $imageName $2 $path >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl apply -f $path/springboot-deployment.yaml >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl apply -f $path/springboot-service.yaml >> $path/output.log 2>&1
