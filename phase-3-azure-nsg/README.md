# Phase 3 – Azure Network Security Rules, UDRs, and Azure Firewall

This phase of the Cloud Cybersecurity Lab focuses on implementing advanced network security controls using multiple Azure resources. It includes Network Security Group (NSG) rules, User-Defined Routes (UDRs), and Azure Firewall to demonstrate centralized and layered network protection in a segmented environment.

---

## 🧱 Objective

- Build custom NSG rules for each subnet tier (Web, App, DB).
- Implement UDRs to control route paths and steer traffic through inspection points.
- Deploy Azure Firewall to centralize traffic inspection and egress filtering.
- Log traffic flows and integrate with Log Analytics for visibility and threat detection.

---

## 🛠️ Terraform Modules

This phase is split into multiple logical modules/folders:

### `terraform-nsg-rules`
- Creates custom NSG rules for:
  - Web-to-App
  - App-to-DB
  - Deny rules
  - Inbound/Outbound restrictions

### `terraform-udrs`
- Defines User-Defined Routes to:
  - Route egress traffic through Azure Firewall
  - Prevent direct internet access from App/DB tiers

### `terraform-firewall`
- Deploys Azure Firewall in a dedicated subnet.
- Configures Firewall Policies for:
  - Network rules (IP/port based)
  - Application rules (FQDN filtering)

### `terraform-flow-logs`
- Enables NSG flow logs via Network Watcher
- Stores logs in a storage account

### `terraform-log-analytics`
- Deploys a Log Analytics Workspace
- Connects flow logs and Azure Firewall logs for analysis

---

## 🔁 Order of Operations

1. **Log Analytics + NSG Flow Logs**  
   `terraform-log-analytics` → `terraform-flow-logs`

2. **Deploy NSG Rules + UDRs**  
   `terraform-nsg-rules` → `terraform-udrs`

3. **Deploy Azure Firewall**  
   `terraform-firewall`

---

## ✅ Validation Checklist

- [ ] Verify NSG rules enforce segmentation between tiers.
- [ ] Confirm UDRs route traffic through firewall.
- [ ] Test blocked and allowed traffic paths.
- [ ] Confirm logs are appearing in Log Analytics.

---

## 📂 Folder Structure

```
phase-3-azure-nsg/
├── terraform-nsg-rules/
├── terraform-udrs/
├── terraform-firewall/
├── terraform-flow-logs/
├── terraform-log-analytics/
└── README.md
```

---

## 🔐 Security Focus

This phase brings multiple network security disciplines together:
- Micro-segmentation with NSGs
- East-west and north-south traffic control
- Centralized logging and monitoring
- Routing enforcement with UDRs
- Firewall-based inspection and deny lists

