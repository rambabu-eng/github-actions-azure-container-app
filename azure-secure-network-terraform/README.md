Project Overview
# Azure Secure Network Foundation

## Overview
This project creates a secure Azure Network foundation using Terraform. It includes:
- Resource Group
- Virtual Network (Vnet)
- Subnets (Web, App, DB)
- Network Security Groups (NSG)
- NSG Rules (Allow HTTP)

  ## Folder Structure
  azure-secure-network-terraform/
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── providers.tf
│ ├── terraform.tfvars
└── README.md

## How to Deploy
1. Install Terraform and Azure CLI
2. Authenticate with Azure CLI: `az login`
3. Navigate to `terraform` folder
4. Initialize Terraform: `terraform init`
5. Plan deployment: `terraform plan`
6. Apply deployment: `terraform apply`
