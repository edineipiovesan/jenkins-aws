# Jenkins on AWS

Provides a master node from Jenkin on AWS using Terraform.

## Pre requisites
AWS CLI already setup.

## What it creates on your account

- VPC
- Subnet
- Internet Gateway
- Route table (and association with subnet)
- Security Group (opens SSH, HTTP and HTTPS inbound connections)
- Key Pair
- EC2 instance

## How-to

1. Fill variables in setup.tfvars
2. Run `terraform apply -auto-approve -var-file=setup.tfvars`
3. Access the output address
4. Put the administrator password from terraform output
5. Done!