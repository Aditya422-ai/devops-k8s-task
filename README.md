# devops-k8s-task
devops-k8s-task/README.md
# DevOps Kubernetes CI/CD Project 🚀

## 📌 Project Overview
This project demonstrates an end-to-end **DevOps CI/CD pipeline** that builds a Dockerized application, pushes it to Docker Hub, and deploys it on a Kubernetes cluster using Jenkins automation. Infrastructure provisioning is automated using **Terraform**.

## 🛠️ Tech Stack
- **Cloud**: AWS
- **Infrastructure as Code**: Terraform
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **CI/CD**: Jenkins
- **Container Registry**: Docker Hub
- **Web Server**: NGINX

## 📂 Repository Structure
devops-k8s-task/
├── README.md
├── Dockerfile
├── Jenkinsfile
├── app/
│ └── index.html
├── k8s/
│ ├── deployment.yaml
│ └── service.yaml
├── terraform/
│ ├── provider.tf
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf

yaml

## 🐳 Docker Workflow
1. Application is containerized using Docker
2. Image is built via Jenkins
3. Image is pushed to Docker Hub

Image:
adityakul548/hello-k8s:latest

yaml
## 🔁 CI/CD Pipeline (Jenkins)
Pipeline stages:
1. Checkout code from GitHub
2. Build Docker image
3. Login to Docker Hub
4. Push Docker image
5. Deploy to Kubernetes using kubectl

Pipeline file:
Jenkinsfile

yaml

## ☸ Kubernetes Deployment
- Deployment: `k8s/deployment.yaml`
- Service: `k8s/service.yaml`
- Service type: **NodePort**

- 🌍 Terraform Infrastructure
Terraform provisions:
- AWS provider
- (Optional) VPC / EKS placeholders

Terraform directory:
terraform/

Commands:
```bash
terraform init
terraform plan
terraform apply
