provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "main" {
    name = "rg-securelab"
    location = var.location
}

resource "azurerm_virtual_network" "main" {
    name = "vnet-securelab"
    address_space = ["10.0.0.0/16"0]
    location = var.location
    resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "main" {
    name = "subnet-internal"
    resource_group_name = azurerm_resource_group.main.name
    virtual_network_name = azurerm_virtual_network.main.name
    address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "main" {
    name = "nsg-securelab"
    location = var.location
    resource_group_name = azurerm_resource_group.main.name

    security_rule {
        name = "Allow-RDP"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = 'Tcp"
        source_port_range = "*"
        destination_port_range = "3389"
        source_address_prefix = "*"
        destinnation_address_prefix = "*"
    }
}