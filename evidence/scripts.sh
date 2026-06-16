

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app

docker tag devops-node-app:latest 060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app:latest

docker push 060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app:latest