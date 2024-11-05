#/bin/bash

docker build -t demo . >> output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl apply -f ./springboot/springboot-deployment.yaml >> output.log 2>&1
KUBECONFIG=/etc/kubernetes/admin.conf kubectl apply -f ./springboot/springboot-service.yaml >> output.log 2>&1
