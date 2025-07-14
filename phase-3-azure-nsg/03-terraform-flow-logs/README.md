# NSG Flow Logs Configuration

This Terraform module enables Network Security Group (NSG) Flow Logs in Azure for enhanced traffic monitoring and analysis. NSG Flow Logs allow for the capture of information about IP traffic flowing through an NSG, providing visibility for security analysis and network performance.

## Objectives

- Enable NSG Flow Logs on a target NSG
- Store logs in a dedicated Storage Account
- Integrate with Log Analytics for advanced analysis and queries

## Resources Created

- Storage Account for storing flow logs
- Network Watcher
- NSG Flow Log configuration
- Diagnostic settings (if integrated with Log Analytics)

## Folder Structure

```bash
phase-3-logging-monitoring/
└── terraform-nsg-flow-logs/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── terraform.tfvars
    └── README.md
```

## Prerequisites

- An existing NSG to monitor
- Resource Group and Region already provisioned
- Log Analytics Workspace (optional, if integrated)

## Usage

Update `terraform.tfvars` with:

```hcl
resource_group_name = "rg-networking"
location            = "eastus"
nsg_name            = "nsg-web"
storage_account_name = "flowlogsstore123"
log_analytics_workspace_id = "/subscriptions/<sub_id>/resourceGroups/<rg>/providers/Microsoft.OperationalInsights/workspaces/<workspace_name>"
```

Then run:

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Make sure your Storage Account name is globally unique.
- Enabling NSG Flow Logs may incur costs for storage and analytics.
