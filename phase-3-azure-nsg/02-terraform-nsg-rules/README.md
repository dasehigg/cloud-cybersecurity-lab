# Phase 3 – Azure NSG Rules

## Overview
This component of Phase 3 defines custom Azure Network Security Group (NSG) rules that control traffic between subnets and to/from external networks. These rules enforce segmentation and reduce attack surfaces by limiting network access.

## Purpose
- Create custom inbound/outbound security rules for web, app, and db subnets.
- Apply least privilege access principles between tiers.
- Define traffic direction, source/destination IPs, protocols, and ports.

## Resources Created
- NSG Rules (custom):
  - Allow HTTP (80) and HTTPS (443) to Web subnet from Internet.
  - Allow App subnet to communicate with DB subnet on port 1433 (SQL).
  - Allow Web subnet to communicate with App subnet on port 443.
  - Deny all other traffic (default).

## Key Variables
| Variable                  | Description                               |
|---------------------------|-------------------------------------------|
| `nsg_names`               | List of NSG names to associate rules with |
| `rule_priority_start`     | Base priority for custom rules            |
| `allowed_ports`           | Map of ports allowed per subnet pair      |
| `source_subnet_ids`       | Subnet IDs used as traffic source         |
| `destination_subnet_ids`  | Subnet IDs used as traffic destination    |

## Outputs
- None required unless debugging or validating deployed rules.

## Usage
This module should be executed after NSGs and subnets are deployed. You must ensure the NSGs already exist and are passed correctly into this module.

```bash
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```

## Notes
- This module helps enforce segmentation by explicitly allowing only trusted flows.
- NSG rules are stateful and direction matters.
- Ensure no priority conflict with default rules or other modules.

## Next Step
Move on to `terraform-udrs` to define custom user-defined routes and enable forced tunneling if needed.