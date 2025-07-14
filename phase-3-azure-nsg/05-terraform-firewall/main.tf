### 05-terraform-firewall

### main.tf

```hcl
provider "azurerm" { features = {} }

resource "azurerm_firewall" "this" {
    name                            = var.firewall_name
    location                        = var.location
    resource_group_name             = var.resource_group_name
    sku_name                        = var.sku

    ip_configuration {
        name                        = "config"
        subnet_id                   = var.firewall_subnet_id
        public_ip_address_id        = var.public_ip_id
    }
}
```