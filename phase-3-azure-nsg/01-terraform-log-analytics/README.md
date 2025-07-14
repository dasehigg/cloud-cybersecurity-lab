# Log Analytics Workspace Deployment

This Terraform module provisions a Log Analytics Workspace in Azure. It is used to centralize and query logs from various Azure resources, such as NSG Flow Logs, Activity Logs, and Diagnostic Settings.

## Objectives

- Deploy a Log Analytics Workspace
- Configure retention policies
- Enable solutions for enhanced monitoring and security insight

## Resources Created

- Log Analytics Workspace
- Optional linked services or diagnostic settings integrations

## Folder Structure

```bash
phase-3-logging-monitoring/
└── terraform-log-analytics/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── terraform.tfvars
    └── README.md
```

## Prerequisites

- A resource group to deploy the workspace
- Contributor access to the subscription

## Usage

Update `terraform.tfvars` with:

```hcl
resource_group_name = "rg-networking"
location            = "eastus"
workspace_name      = "loganalytics-monitoring"
retention_in_days   = 30
```

Then run:

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Retention policy defaults to 30 days but can be adjusted.
- You can later link NSG Flow Logs or VM diagnostics to this workspace.
