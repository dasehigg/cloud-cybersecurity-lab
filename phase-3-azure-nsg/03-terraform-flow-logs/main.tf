### 03-terraform-flow-logs

### main.tf
```hcl
provider "azurerm" { features = {} }

resource "azurerm_network_watcher_flow_log" "this" {
    network_watcher_name                = var.network_watcher_name
    network_security_group_id           = var.nsg_id
    resource_group_name                 = var.resource_group_name
    enabled                             = true

    retention_policy {
        days        = var.retention_days
        enabled     = true
    }

    log_analytics_workspace_id  = var.azurerm_log_analytics_workspace_id
}
```