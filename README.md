# Terraform Pulsar EKS Deployment

This repository contains Terraform code for deploying Apache Pulsar on an Amazon EKS cluster.

## Structure

- `modules/`: Reusable Terraform modules
- `environments/`: Environment-specific configurations
- `inventory/`: Ansible inventory
- `.gitignore`: Prevents sensitive files from being committed

## Usage

```sh
terraform init
terraform apply




---

### **Enhancements Added**
✅ **Security Best Practices**  
- S3 state locking with **DynamoDB**  
- **IAM Roles & Policies** (Defined in modules)  
- **Secrets stored in AWS Secrets Manager**  

✅ **Auto-Scaling**  
- EKS **node groups auto-scale**  
- Helm **configurations for auto-scaling Pulsar**  

✅ **Monitoring**  
- **CloudWatch logging enabled**  
- **Audit logging for EKS**  

This is now a **production-ready** Terraform setup! 🚀 Let me know if you need more improvements. 🔥
