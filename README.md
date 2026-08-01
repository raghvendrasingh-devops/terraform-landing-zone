# 🚀 Azure Landing Zone using Terraform

> Enterprise-ready Azure Landing Zone built using **Terraform (Infrastructure as Code)** following Azure best practices.

---
┌────────────────────────────────────────────────────────────┐
│              Azure Landing Zone using Terraform            │
├────────────────────────────────────────────────────────────┤
│ GitHub → Azure DevOps → Terraform → Azure Infrastructure  │
│                         │                                  │
│      VNet • NSG • Firewall • Bastion • Key Vault          │
│                         │                                  │
│             Secure • Scalable • Automated                 │
└────────────────────────────────────────────────────────────┘

## 📖 Overview

This project automates the deployment of a secure and scalable Azure Landing Zone using Terraform.

The goal is to provide a production-ready Azure foundation with networking, governance, identity, and security components that can be reused across multiple environments.

---

## 🏗 Architecture

The Landing Zone includes:

- Resource Groups
- Virtual Network (VNet)
- Multiple Subnets
- Network Security Groups (NSG)
- Route Tables
- Azure Bastion
- Azure Firewall
- Public IPs
- Azure Key Vault
- Storage Account
- Log Analytics Workspace
- Azure Monitor
- Virtual Machines
- Private Endpoints
- VNet Peering
- RBAC Ready Structure

---

## 📂 Project Structure

```
terraform-landing-zone/

├── modules/
│   ├── resource-group/
│   ├── virtual-network/
│   ├── subnet/
│   ├── nsg/
│   ├── route-table/
│   ├── storage-account/
│   ├── key-vault/
│   ├── virtual-machine/
│   ├── bastion/
│   ├── firewall/
│   └── monitor/
│
├── environments/
│   ├── dev/
│   ├── test/
│   └── prod/
│
├── backend.tf
├── providers.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── versions.tf
└── README.md
```

---

## ⚙ Technologies Used

- Microsoft Azure
- Terraform
- Azure CLI
- Git
- GitHub
- Infrastructure as Code (IaC)

---

## 🚀 Deployment

### Clone Repository

```bash
git clone https://github.com/<yourusername>/terraform-landing-zone.git
```

### Initialize Terraform

```bash
terraform init
```

### Validate

```bash
terraform validate
```

### Plan

```bash
terraform plan
```

### Deploy

```bash
terraform apply
```

---

## 📌 Features

- Modular Terraform Design
- Reusable Infrastructure
- Environment Separation
- Production Ready Structure
- Secure Azure Networking
- Infrastructure as Code
- Easy to Scale
- Easy to Maintain

---

## 📸 Architecture Diagram

> Add your Landing Zone Architecture Diagram here.

Example:

```
Internet
    │
Azure Firewall
    │
Hub VNet
    │
VNet Peering
    │
Spoke VNets
    │
Applications
```

(You can replace this with an image later.)

---

## 🔐 Security

This project follows Infrastructure Security best practices.

- Least Privilege Access
- Network Segmentation
- NSGs
- Azure Firewall
- Private Endpoints
- Azure Key Vault
- Secure Resource Deployment

---

## 📈 Benefits

- Faster Infrastructure Deployment
- Consistent Environment Creation
- Reusable Modules
- Reduced Manual Configuration
- Easier Disaster Recovery
- Version Controlled Infrastructure

---

## 🤝 Contributing

Contributions are welcome.

1. Fork Repository
2. Create Feature Branch
3. Commit Changes
4. Open Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

**Raghvendra Singh**

Azure DevOps Engineer

Terraform • Azure • Azure DevOps • CI/CD • Infrastructure as Code
