### 04-terraform-udrs

### main.tf

```hcl
provider "azurerm" { features = {} }

resource "azurerm_route_table" "this" {
    name                    = var.route_table_name
    location                = var.location
    resource_group_name     = var.resource_group_name
}

resource " azurerm_route" "this" {
    name                    = var.route_table_name
    resource_group_name     = var.resource_group_name
    route_table_name        = azurerm_route_table.this.name
    address_prefix          = var.address_prefix
    next_hop_type           = "VirtualAppliance"
    next_hop_in_ip_address  =   var.next_hop_in_ip
}
```
