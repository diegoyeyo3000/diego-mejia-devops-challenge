# DevOps Challenge – Diego Mejía

## Overview

This repository contains the complete solution for the DevOps Technical Challenge.

The solution includes the requested CI/CD pipeline, Infrastructure as Code, Kubernetes deployment, monitoring, security scanning, containerization, and public deployment on AWS.

---

# Architecture

GitHub
│
├── GitHub Actions
│ ├── Unit Tests
│ ├── Coverage
│ ├── SonarCloud
│ ├── Docker Build
│ ├── Trivy Scan
│ ├── Push to Amazon ECR
│ └── Helm Deployment
│
Amazon ECR
│
Amazon EKS
│
Helm Chart
│
AWS Load Balancer Controller
│
Application Load Balancer
│
Route53
│
HTTPS (ACM Certificate)
│
NodeJS Application

---

# Technologies

- NodeJS
- Docker
- Kubernetes
- Helm
- Terraform
- Amazon EKS
- Amazon ECR
- Application Load Balancer
- Route53
- AWS Certificate Manager
- GitHub Actions
- SonarCloud
- Trivy

---

# Features Implemented

## Infrastructure

✔ Amazon VPC

✔ Public Subnets

✔ Internet Gateway

✔ Route Tables

✔ Security Groups

✔ Amazon EKS Cluster

✔ Managed Node Group

✔ IAM Roles

✔ OIDC Provider

✔ Route53 Record

✔ AWS Load Balancer Controller

---

## Kubernetes

✔ Deployment

✔ Service

✔ ConfigMap

✔ Secret

✔ Horizontal Pod Autoscaler

✔ Ingress

✔ HTTPS

✔ ALB

---

## Helm

The entire Kubernetes deployment was migrated to Helm.

Resources deployed:

- Namespace
- Deployment
- Service
- ConfigMap
- Secret
- Ingress
- HPA

Image version is automatically updated during CI/CD.

---

## CI/CD

Implemented using GitHub Actions.

Pipeline stages:

1. Checkout
2. Install dependencies
3. Unit Tests
4. Coverage
5. SonarCloud Analysis
6. Docker Build
7. Trivy Security Scan
8. Push Image to Amazon ECR
9. Deploy to Amazon EKS using Helm
10. Rollout Verification

---

## Security

- SonarCloud Static Analysis
- Trivy Container Scan
- HTTPS
- AWS ACM Certificate
- IAM Roles
- Kubernetes Secrets

---

## Infrastructure as Code

Infrastructure was implemented using Terraform.

Terraform provisions:

- VPC
- EKS
- IAM
- OIDC
- AWS Load Balancer Controller
- Route53
- ALB integration

The application deployment itself is managed through Helm, following Kubernetes best practices.

---

## Improvements Added

Besides the requested requirements, the following improvements were included:

- Helm deployment instead of raw manifests
- Route53 automation
- HTTPS with ACM
- Automatic ALB creation
- Automatic image versioning
- Infrastructure modularized with Terraform
- Security scanning with Trivy
- Static analysis with SonarCloud
- HPA autoscaling
- Health checks
- Production-ready Ingress

---

# Public URL

https://api.lenapp.click

---

# Repository Structure

terraform/
helm/
.github/workflows/
src/
Dockerfile
README.md

---

# Important Notes

The environment has been intentionally left running for validation purposes.

It will remain available for approximately **one week**.

If additional validation time is required, please let me know before shutting it down.

---

Thank you for reviewing my solution.
