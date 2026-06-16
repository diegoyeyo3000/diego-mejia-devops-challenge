# DevOps Implementation

## Technical Challenge Solution

This repository contains the original Node.js application provided by Devsu and the complete DevOps implementation developed as part of the technical assessment.

### Implemented Features

#### Docker

The application was containerized using Docker following production-oriented practices:

- Non-root user execution
- Health check endpoint
- Environment variable support
- Docker Compose support
- Optimized image build

Health endpoint:

```bash
GET /health
```

Example response:

```json
{
  "status": "UP",
  "timestamp": "2026-06-16T05:30:09.978Z"
}
```

---

## CI/CD Pipeline

GitHub Actions was implemented to automate the delivery process.

Pipeline stages:

- Source Code Checkout
- Dependency Installation
- Unit Tests Execution
- Code Coverage Generation
- Docker Image Build
- Trivy Vulnerability Scan
- Push Docker Image to Amazon ECR

---

## Infrastructure as Code

Terraform was used to provision AWS resources.

Provisioned resources:

- Amazon ECR Repository
- Amazon EKS Cluster
- Managed Node Group
- VPC
- Public Subnets
- Security Groups

Terraform location:

```text
terraform/ecr
terraform/infrastructure
```

Deployment commands:

```bash
terraform init
terraform plan
terraform apply
```

---

## Container Registry

Docker images are automatically published to Amazon Elastic Container Registry (ECR).

Repository:

```text
060763492167.dkr.ecr.us-east-1.amazonaws.com/devops-node-app
```

---

## Kubernetes Deployment

The application is deployed to Amazon EKS using Kubernetes manifests.

Implemented resources:

- Namespace
- Deployment
- Service
- ConfigMap
- Secret
- Horizontal Pod Autoscaler (HPA)

Deployment characteristics:

- 2 application replicas
- Health probes
- Resource requests and limits
- Automatic scaling support

Deployment command:

```bash
kubectl apply -f k8s/
```

Validation:

```bash
kubectl get all -n devops-demo
```

---

## Public Endpoint

Application Health Endpoint:

```text
http://aa218448ee9124d949bb0e37aa49c1f9-632905733.us-east-1.elb.amazonaws.com/health
```

---

## Architecture

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ├── Unit Tests
   ├── Coverage
   ├── Trivy Scan
   ├── Docker Build
   └── Push to ECR
   │
   ▼
Amazon ECR
   │
   ▼
Amazon EKS
   │
   ├── Deployment (2 Replicas)
   ├── ConfigMap
   ├── Secret
   ├── Service
   └── HPA
   │
   ▼
AWS Load Balancer
   │
   ▼
Node.js Application
```

---

## Evidence

The following evidence is included in the repository:

- GitHub Actions execution
- Terraform deployment
- Amazon EKS cluster
- Running Pods
- Load Balancer Service
- Health Endpoint validation

---

## Future Improvements

- SonarCloud integration
- TLS certificates
- Ingress Controller
- GitOps deployment with ArgoCD
- Prometheus and Grafana monitoring
- Blue/Green deployments
