# Terraform Nginx Demo

A standalone dummy Terraform project that provisions an AWS EC2 instance and
installs Nginx automatically. It is intended to demonstrate Terraform skills
before working on company infrastructure.

## Architecture

```text
Terraform -> AWS default VPC -> Security Group -> EC2 -> Nginx
```

## Creates

- Amazon Linux 2023 EC2 instance
- Security group allowing HTTP on port 80
- Nginx installed through EC2 user data
- Simple Nginx demo page

## Prerequisites

- AWS account
- Terraform
- AWS CLI
- AWS permissions for EC2 and security groups

Authenticate using your normal AWS CLI/profile method. Never commit AWS keys.

```bash
aws sts get-caller-identity
```

## Deploy

```bash
terraform init
terraform plan
terraform apply
```

Confirm with `yes`. Terraform prints the public IP and website URL.

Test:

```bash
curl http://<PUBLIC_IP>
```

Expected:

```text
Hello from Terraform + AWS + Nginx!
```

## Destroy

Remove the demo resources when finished:

```bash
terraform destroy
```

## Project structure

```text
terraform-nginx-demo/
├── README.md
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
└── .gitignore
```

## Workflow

```text
Write Terraform
      ↓
terraform init
      ↓
terraform plan
      ↓
terraform apply
      ↓
Verify Nginx
      ↓
terraform destroy
```

This project does not use company credentials, company infrastructure, or
confidential configuration.
