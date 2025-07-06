# 📘 Phase 1: Azure Secure VNet Environment

This phase establishes the foundational network infrastructure in Microsoft Azure using Terraform. The goal is deplopy a secure scalable, and modular virtual network (VNet) that follows cloud security best practices and prepares the vnironment for future segmentation and threat prevention.

---

## 📄 Phase Summary

- Deploys a resource group and Azure Virtual Network with a defined IP address space
- Creates an initial subnet intended for internal workloads
- Applies a Network Security Group (NSG) that restricts all traffic by default
- Implements infrastructure-as-code to ensure repeatability and version control
- Serves as a foundation for future phases involving segmentation, firewalls, and security monitoring

---

## 📂 Directory Structure

```
phase-1-azure-secure-vnet/
   └──── terraform-azure-secure-vnet/   
    ├─── main.tf                    # Core infrastructure definition
    ├─── variables.tf               # Exposes VNet and subnet details
    ├─── outputs.tf                 # Parameterized configuration
    └─── .terraform.lock.hcl        # Provider version control

```

---

## 🎯Objectives

- Build secure and scalable cloud network infrastructure
- Automate network provisioning using Terraform
- Enforce least-privilege access through deny-by-default NSG policies
- Establish a clean, auditable baseline for enterprise cloud environments

---

## 🚀 Next Phase

Advance to [Phase 2: Azure Segmentation](../phase-2-azure-segmentation/) to design multiple subnets and enforce traffic control between network zones.
