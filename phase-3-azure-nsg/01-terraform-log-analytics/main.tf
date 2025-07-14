### 01-terraform-log-analytics

### main.tf

```hcl
terraform {
    required_providers {
        azurerm = { source = "hashicorp/azurerm" version = "~>3.0" }
    }
    required_version = ">=1.0"
}

provider "azurerm" {
    features = {}
}

resource "azurerm_log_analytics_workspace" "this" {
    name                        = var.workspace_name
    location                    = var.Location
    resource_group_name         = var.resource.resource_group_name
    sku                         = var.sku
    retention_in_days           = var.retention_in_days
}
```