# 🚀 Terraform EKS Infrastructure on AWS

<p align="center">
  <strong>Automating Kubernetes Infrastructure with Terraform and Amazon EKS</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-IaC-844FBA?logo=terraform&logoColor=white" />
  <img src="https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws&logoColor=white" />
  <img src="https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?logo=kubernetes&logoColor=white" />
  <img src="https://img.shields.io/badge/Status-In%20Progress-yellow" />
</p>

---

## 📌 Project Overview

This project demonstrates the automation of AWS infrastructure using **Terraform** and the deployment of a managed Kubernetes cluster using **Amazon EKS**.

The infrastructure is provisioned using reusable Terraform modules, making it easier to manage, maintain, and scale cloud resources.

### 🎯 Project Objectives

- Automate AWS infrastructure using Terraform.
- Create a modular and reusable Terraform configuration.
- Provision an Amazon EKS cluster.
- Configure managed worker nodes.
- Deploy essential EKS cluster add-ons.
- Understand Infrastructure as Code (IaC) in real-world cloud environments.

---

## 🏗️ Architecture & Components

| Component | Description |
|---|---|
| AWS VPC | Custom networking environment |
| Public Subnets | Public network infrastructure |
| Private Subnets | Private workload networking |
| NAT Gateway | Outbound internet connectivity |
| Security Groups | Network traffic control |
| IAM Roles | AWS permissions and access management |
| Amazon EKS | Managed Kubernetes control plane |
| EKS Node Group | Worker node management |
| EKS Add-ons | CoreDNS, kube-proxy, VPC CNI |
| Terraform | Infrastructure automation |

---

## 🛠️ Tech Stack

- **Cloud:** Amazon Web Services (AWS)
- **Infrastructure as Code:** Terraform
- **Container Orchestration:** Kubernetes
- **Managed Kubernetes:** Amazon EKS
- **Networking:** VPC, Subnets, NAT Gateway
- **Security:** IAM, Security Groups
- **Operating System / CLI:** Windows PowerShell, AWS CLI

---

## ⚙️ Project Configuration

| Setting | Value |
|---|---|
| AWS Region | `us-east-2` |
| EKS Cluster | `tws-eks-cluster` |
| Kubernetes Version | `1.31` |
| Worker Instance Type | `t3.micro` |
| Capacity Type | `ON_DEMAND` |
| Desired Nodes | `1` |
| Minimum Nodes | `1` |
| Maximum Nodes | `2` |

---

## 📂 Terraform Project Structure

The project uses a modular Terraform approach.

- Root configuration: Main infrastructure deployment.
- VPC module: Networking resources.
- EKS module: Kubernetes cluster and managed node groups.
- Variables: Configurable infrastructure values.
- Outputs: Useful infrastructure information.

*Update this section with the exact folder structure of your repository.*

---

## 🚀 Deployment Guide

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/terraform-eks-project.git
cd terraform-eks-project
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate Configuration

```bash
terraform validate
```

### 4. Review Execution Plan

```bash
terraform plan
```

### 5. Deploy Infrastructure

```bash
terraform apply
```

Review the Terraform plan carefully before approving deployment.

---

## 🔍 Verify the EKS Cluster

Check AWS identity:

```bash
aws sts get-caller-identity
```

Check EKS cluster:

```bash
aws eks describe-cluster \
  --name tws-eks-cluster \
  --region us-east-2
```

List managed node groups:

```bash
aws eks list-nodegroups \
  --cluster-name tws-eks-cluster \
  --region us-east-2
```

---

## 💡 Key Learnings

Through this hands-on project, I worked on:

- Terraform modules and reusable infrastructure.
- AWS VPC and subnet configuration.
- IAM roles and security groups.
- Amazon EKS cluster provisioning.
- Managed node groups and capacity configuration.
- Terraform plan, apply, and state management.
- Troubleshooting AWS infrastructure deployment errors.

---

## 💰 Cost Awareness

AWS resources may generate charges, including:

- Amazon EKS cluster control plane.
- NAT Gateways and Elastic IP addresses.
- EC2 worker nodes and EBS volumes.
- CloudWatch logs and other associated resources.

Always review your AWS billing dashboard and clean up resources when they are no longer required.

**Important:** Do not run `terraform destroy` without reviewing the resources it will remove.

---

## 🔐 Security Best Practices

- Never commit AWS access keys or secret keys.
- Never upload Terraform state files.
- Keep sensitive `.tfvars` files out of GitHub.
- Use IAM roles and least-privilege permissions.
- Add Terraform state and local plan files to `.gitignore`.

---

## 👨‍💻 Author

**NIKHIL THAKARE**

Aspiring Cloud & DevOps Engineer | AWS | Terraform | Kubernetes

<p align="center">
  ⭐ If you find this project useful, consider giving it a star!
</p>

---

*Built as a hands-on Infrastructure as Code learning project.*
