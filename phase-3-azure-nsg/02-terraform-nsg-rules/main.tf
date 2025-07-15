### 02-terraform-nsg-rules

### main.tf

provider "azurerm" { features = {} }

resource "azurerm_network_security_group" "this" {
    name                    = var.nsg_name
    location                = var.location
    resource_group_name     = var.resource_group_name
}

resource "azurerm_network_security_rule" "example" {
    name                                = var.rule_name
    priority                            = var.priority
    direction                           = var.direction
    access                              = var.access
    protocol                            = var.protocol
    source_port_range                   = var.source_port_range
    destination_port_range              = var.destination_port_range
    source_address_prefix               = var.source_address_prefix
    destination_address_prefix          = var.destination_address_prefix
    network_security_group_name         = azurerm_network_security_group.this.name
}