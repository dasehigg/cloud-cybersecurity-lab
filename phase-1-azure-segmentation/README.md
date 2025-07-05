# 📘 Phase 1: Azure Network Security & Segmentation

This phase focueses on implementing secure network designs in Microsoft Azure using infrastructure-as-code (Terraform). The goal is to simulate real-world cloud segmentation and network protection practices through hands-on projects.

## 🔷 Subprojects

### [`Terraform-azure-segmentation-lab`](./terraform-azure-segmentation-lab/)

Implements a segmented Azure network with multiple subnets, custom NSGs, and traffic control rules to simulate a secure, micro-segmented enterprise network.

- Deploys resource group, virtual network,  and subnet architecture
- Uses Terraform for reproducibility and automation
- Demonstrates security group isolation between workloads

### [`Terraform-azure-secure-vnet`](./terraform-azure-secure-vnet/)

Builds a hardened virtual network following security best practices. Intended as a standalone or reusable VNet module in larger secure cloud environments.

- Enforces NSGs rules
- Blocks all traffic by default and opens only required ports
- Foundation for future deployments (e.g., workloads, firewalls)

## ✅ Goals

- Practice cloud network design & segmentation
- Apply Terraform to build secure Azure infrastructure
- Document cloud infrastructure-as-code workflows for cybersecurity portfolio

## 📂 Folder Structure

```
phase-1-azure-segmentation/
│
├─── terraform-azure-segmentation-lab/  # Full micro segmentation lab
│    ├── main.tf
│    ├── variables.tf
│    ├── outputs.tf
│    ├── README.md
│
│
│
├─── terraform-azure-secure-vnet/   # Secure VNet module
│    ├─── main.tf
│
│
├─── README.md  # Phase README
│
```
