🚀 Azure Infrastructure Deployment with Bicep & GitHub Actions CI/CD
📌 Project Overview

This project demonstrates end-to-end Azure infrastructure deployment using Bicep, fully automated through GitHub Actions CI/CD pipelines.
It follows Infrastructure as Code (IaC) best practices with secure authentication, modular design, and environment-based deployments.

The repository showcases how cloud infrastructure can be validated, previewed (What-If), and deployed automatically to Azure using modern DevOps workflows.

🏗️ Architecture & Components

The solution provisions Azure resources using modular Bicep templates, including:

Azure Resource Group

Azure App Service (Web App)

Application Monitoring (Application Insights)

Supporting resources as reusable Bicep modules

CI/CD is handled through GitHub Actions, ensuring safe and automated deployments.

📂 Repository Structure
bicep-azure-cicd-github-actions/
├─ infra/
│  ├─ main.bicep
│  ├─ parameters/
│  │  └─ dev.json
│  └─ modules/
│     ├─ appservice.bicep
│     └─ monitoring.bicep
│
├─ .github/
│  └─ workflows/
│     ├─ bicep-whatif.yml
│     └─ bicep-deploy.yml
│
├─ README.md
└─ .gitignore

🔄 CI/CD Pipeline Overview
1️⃣ Bicep What-If Pipeline

Triggered on Pull Requests

Uses Azure What-If to preview infrastructure changes

Ensures safe and controlled deployments

Prevents unintended changes before merge

2️⃣ Bicep Deploy Pipeline

Triggered on push to main branch

Authenticates to Azure using OIDC (Workload Identity Federation)

Deploys infrastructure automatically to Azure

No secrets stored in GitHub

🔐 Security Best Practices

✅ OIDC authentication (no client secrets)

✅ Azure AD App Registration with federated identity

✅ Environment-based parameter files

✅ Infrastructure changes validated before deployment

🛠️ Tools & Technologies Used

Azure Bicep

GitHub Actions

Azure Resource Manager (ARM)

Azure App Service

Application Insights

Azure AD (OIDC authentication)

VS Code

▶️ How to Deploy
Prerequisites

Azure Subscription

Azure AD App Registration with federated credentials

GitHub repository secrets:

AZURE_CLIENT_ID

AZURE_TENANT_ID

AZURE_SUBSCRIPTION_ID

Deployment Steps

Create a Pull Request → triggers What-If

Review infrastructure changes

Merge to main branch

GitHub Actions deploys infrastructure automatically 🚀

🎯 Key Learnings & Outcomes

Hands-on experience with Bicep modular design

Implemented secure CI/CD pipelines using GitHub Actions

Learned Azure OIDC authentication for GitHub workflows

Applied real-world DevOps and IaC best practices

👤 Author

This project is part of my Azure Cloud Engineering learning journey, focused on building hands-on, job-ready cloud and DevOps projects using Azure, Bicep, Terraform, and CI/CD pipelines.