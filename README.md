# ☁️ cloud-cybersecurity-lab
Real-world cloud cybersecurity lab designed to simulate enterprise-grade infrastructure and security practices using:

- **Terraform** for Infrastructure as Code (IaC)
- **Azure** and **GCP* cloud platforms
- **DevSecOps** automation
- **SIEM** for monitoring, detection, and response

> This project demonstrates hands-on, job-ready skills in cloud security architecture, infrastructure automation, and proactive threat defense.

---

## 🥼 Lab Phases

### ✅ Phase 0: Environment Setup & Lab Preparation
Prepares engineers system and cloud accounts for secure, hands-on cloud cybersecurity labs.

- Verifies required tools: Terraform CLI, Azure CLI, GCP CLI, Git, and VS Code
- Screenshots of installation and verification
- Ensures environment readiness for Azure and GCP labs

[`phase-0-environment-setup/`](./phase-0-environment-setup/)

### ✅ Phase 1: Azure Secure VNet Environment
Deploys a basic secure Azure network architecture using Terraform.

- Create resource group, virtual network, subnet
- Applies NSG (Network Security Group) with baseline rules
- Modular IaC structure for reusability

📂 [`phase-1-azure-segmentation/`](./phase-1-azure-segmentation//)

---

### 🔃 Phase 2: Azure Network Segmentation & Security
Implement microsegmentation using subnet-level NSGs.

- Isolates workloads by subnet
- Applies targeted NSG rules
- Built with modular Terraform scripts

---

### 🔃 Phase 3: Azure Firewall & Palo Alto NGFW Integration
Integrates centralized firewalls for north-south and east-west traffic control.

- Azure Firewall or Palo Alto VM-Series deployment
- Route tables for forced tunneling
- Logging and threat detection policies

---

### 🔃 Phase 4: DevSecOps Pipeline & Security Automation
Introduces CI/CD pipelines with security gates.

- Terraform deployment via GitHub Actions
- Secrets scanning, policy-as-code
- Linting, compliance testing

### 🔃 Phase 5: GCP Secure Networking
Builds a secure GCP VPC with firewall policies and IAM controls.

- VPC, subnets, firewall rules
- Identity & Access Management (IAM) roles
- Terraform automation

---

### 🔃 Phase 6: SIEM Integration (Azure Sentinel / Splunk)
Enables cloud logging and threat detection.

- Connects NSG flows, firewall logs, and audit logs
- Uses Log Analytics, Azure Sentinel, or Splunk
- Builds detection rules and dashboards

---

## 📂 Project Structure

```plaintext
cloud-cybersecurity-lab/
├─── phase-0-environment-setup/  # Full micro segmentation lab
│    ├── main.tf
│    ├── variables.tf
│    ├── outputs.tf
│    ├── README.md
│
├─── phase-1-azure-segmentation/
│
|    ├─── terraform-azure-secure-vnet/
│    |  ├── main.tf
│    │  ├── variables.tf
│    |  ├── outputs.tf
│    |  ├── README.md
│       
│    ├─── terraform-azure-segmentation-lab/
│    |  ├── main.tf
│    │  ├── variables.tf
│    |  ├── outputs.tf
│    |  ├── README.md
│
│
├─── README.md  # Phase README
│
```

## 🔨 Tools & Technologies

|   Category                        | Tools/Platforms                           |
|-----------------------------------|-------------------------------------------|
| IaC                               | Terraform                                 |
| Cloud Platforms                   | Azure, GCP                                | 
| Security                          | NSG, Azure Firewall, Palo Alto NGFW       |
| DevSecOps                         | GitHub Actions, tfsec, checkov            |  
| Logging & SIEM                    | Azure Sentinel, Splunk                    |
| Languages                         | Secrets & credentials management          | 

---

## 🧑🏾‍💻 Author

**DaSean Higgins**
Cloud & Cybersecurity Engineer
✉️ higgins.dasean@gmail.com
🔗 GitHub: [github.com/daseanhiggins](https://github.com/daseanhiggins)

---

## 💡Purpose

This lab was built to:
- Simulate real-world cloud security scenarios
- Practice modular, production-ready Terraform
- Gain hands-on experience in Azure, GCP, and DevSecOps
- Demonstrate readiness for roles in cloud security and automation

---

## 📝 Notes

- `.tfstate`, `.terraform`, and sensitive files are excluded using `.gitignore`
- `.terraform.lock.hcl` is versioned for provide consistency
- All resources are deployed in isolated lab environments (no production impact)

---

## 🚀 License

This project is for educational and portfolio use only.