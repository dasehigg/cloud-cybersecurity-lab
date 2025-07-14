# Azure Firewall Deployment (Phase 3 - terraform-firewall)

This folder contains the Terraform configuration to deploy an **Azure Firewall** into the segmented virtual network created in previous phases. The firewall is a key security control used to enforce and monitor traffic between subnets and to external resources.

## Overview

The firewall is deployed into a **dedicated subnet** named `AzureFirewallSubnet` and integrated with the previously created **virtual network**. This setup enables:

- Centralized control and logging of network traffic
- Filtering and inspection of traffic between subnets (e.g., web, app, db)
- Logging via Azure Monitor and Log Analytics
- Defined Network and Application Rules for explicit traffic allowance

## Key Resources

- `azurerm_firewall`
- `azurerm_firewall_policy` (optional for advanced scenarios)
- `azurerm_firewall_network_rule_collection`
- `azurerm_firewall_application_rule_collection`
- `azurerm_public_ip`
- `azurerm_route_table` and `azurerm_route` for UDR to send subnet traffic through firewall

## Files

- `main.tf`: Defines the Azure Firewall, public IP, and route tables.
- `variables.tf`: Input variables for customization.
- `outputs.tf`: Outputs for firewall IP and resource info.
- `terraform.tfvars`: File to supply values for the variables (not committed to version control).
- `README.md`: This documentation file.

## How to Use

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```

2. **Validate the configuration:**
   ```bash
   terraform validate
   ```

3. **Preview the plan:**
   ```bash
   terraform plan -var-file="terraform.tfvars"
   ```

4. **Apply the configuration:**
   ```bash
   terraform apply -var-file="terraform.tfvars"
   ```

## Requirements

- Azure CLI authentication (`az login`)
- Terraform >= 1.3.x
- Existing virtual network (`vnet-segmentation`) and subnets from Phase 2

## Notes

- Ensure `AzureFirewallSubnet` exists and has the correct address prefix.
- If using custom route tables, associate them with appropriate subnets to route traffic through the firewall.
- Allow traffic to/from necessary services (e.g., DNS, updates) in rule collections.

---

Back to [Phase 3 README](../README.md)
