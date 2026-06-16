#!/bin/bash

mkdir -p \
k8s \
terraform/ecr \
terraform/infrastructure \
.github/workflows \
docs \
diagrams

touch \
Dockerfile \
docker-compose.yml \
README.md \
.github/workflows/ci-cd.yml \
k8s/namespace.yaml \
k8s/deployment.yaml \
k8s/service.yaml \
k8s/ingress.yaml \
k8s/configmap.yaml \
k8s/secret.yaml \
k8s/hpa.yaml \
k8s/kustomization.yaml \
terraform/ecr/main.tf \
terraform/ecr/variables.tf \
terraform/ecr/outputs.tf \
terraform/infrastructure/main.tf \
terraform/infrastructure/variables.tf \
terraform/infrastructure/outputs.tf

echo "Estructura creada correctamente"