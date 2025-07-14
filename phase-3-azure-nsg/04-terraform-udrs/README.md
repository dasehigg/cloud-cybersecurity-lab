# Azure User Defined Routes (UDRs) with Terraform

This module demonstrates how to create and manage Azure User Defined Routes (UDRs) using Terraform. UDRs are essential for controlling traffic flow between subnets, enabling scenarios like network virtual appliances (NVAs), firewalls, or forcing traffic through specific network paths.

## Objectives

- Define custom routes for Azure subnets.
- Attach route tables to subnets to control traffic flow.
- Use Terraform to automate UDR deployment.

## Project Structure

```plaintext
phase-3-advanced-network-controls/
└── terraform-udrs/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── terraform.tfvars
    └── README.md
```

## Features

- Create Azure Route Tables
- Define routes (e.g., 0.0.0.0/0 to a firewall or NVA)
- Associate Route Tables with Subnets

## Requirements

- Azure CLI authenticated session (`az login`)
- Terraform >= 1.0.0
- Configured backend and provider

## Usage

1. Customize the `terraform.tfvars` file with your route details and subnet IDs.
2. Run the following Terraform commands:

```bash
terraform init
terraform plan
terraform apply
```

## Example Route Table Configuration

```hcl
resource "azurerm_route_table" "example" {
  name                = var.route_table_name
  location            = var.location
  resource_group_name = var.resource_group_name

  route {
    name                   = "default-route"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = var.nva_ip
  }
}

resource "azurerm_subnet_route_table_association" "example" {
  subnet_id      = var.subnet_id
  route_table_id = azurerm_route_table.example.id
}
```

## Outputs

- Route Table ID
- Associated Subnet ID

## License

This project is for educational and demonstration purposes only.
