

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app

docker tag devops-node-app:latest 060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app:latest

docker push 060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app:latest

aws eks update-kubeconfig --region us-east-1 --name devops-challenge

aws eks describe-cluster --name devops-challenge --region us-east-1 --query "cluster.status"

aws eks list-access-entries --cluster-name devops-challenge --region us-east-1

kubectl get nodes