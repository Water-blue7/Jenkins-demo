#!/bin/bash

# 项目根文件夹
path=$1
# 镜像名称
imageName=$2

# 获取格式为 YYYY-MM-DD HH:MM:SS 的当前时间
current_time=$(date "+%Y-%m-%d %H:%M:%S")
echo "$current_time ===============================" > $path/output.log 2>&1
echo "$current_time ==》项目路径：$path，镜像名称：$imageName 开始--" >> $path/output.log 2>&1

# 不删除也行，会自动覆盖掉旧文件
# rm -rf /root/springboot/jarfile && rm /root/springboot/Dockerfile >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl delete -f $path/springboot-deployment.yaml >> $path/output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl delete -f $path/springboot-service.yaml >> $path/output.log 2>&1
# 停止并删除所有使用 demo 镜像的容器
echo "$current_time ==》暂停并删除镜像名称为$imageName 的容器--" >> $path/output.log 2>&1
containers=$(docker ps -aq --filter ancestor=$imageName)
if [ -n "$containers" ]; then
    docker stop $containers >> $path/output.log 2>&1
    docker rm $containers >> $path/output.log 2>&1
    # 删除镜像
    docker rmi $imageName >> $path/output.log 2>&1
fi
