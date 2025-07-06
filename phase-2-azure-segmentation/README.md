# 🚧 Phase 2: Azure Network Segmentation

This lab builds upon the secure VNet foundation created in Phase 1 by implementing advanced network segmentation techniques using Azure and Terraform. It simulates a micro-segmented enterprise network for hands-on learning in network security architecture and access control.

---

## 🔍 Summary

This phase introduces layered security through custom subnets, NSGs, and segmentation policies designed to control east-west and north-south traffic in Azure. It mimics real-world scenarios for organizing workloads into secure zones with least-privilege access.

---

## 🎯 Objectives

- Apply Azure NSG rules for precise traffic control between subnets
- Enforce least-privilege principles through subnet-level access restrictions
- Simulate a segmented enterprise network topology
- Enhance Terraform modularity and reusable network patterns
- Strengthen understanding of network security zones

---

## 📂 Directory structure

```

phase-2-azure-segmentation/
   └──── terraform-azure-segmentation/   
    ├─── main.tf                    # Creates multiple subnets, NSGs, and security rules
    ├─── variables.tf               # Parameterized input variables
    ├─── outputs.tf                 # Outputs for subnet IDs and NSG info
    └─── README.md                  # Project documentation

```

## ✅ Goals

- A segmented cloud environment with reusable Terraform modules
- A clear understanding of network traffic isolation
- Cloud security project that can be showcased in a cybersecurity portfolio