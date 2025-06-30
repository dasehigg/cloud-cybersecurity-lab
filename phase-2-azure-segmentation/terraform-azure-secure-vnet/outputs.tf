output "vnet_name" {
    value = azurerm_virtual_network.main.name
}

output "subnet_id" {
    value = azurerm_subnet.main.id
}

output "nsg_id" {
    value = azurerm_network_security_group.main.id
}