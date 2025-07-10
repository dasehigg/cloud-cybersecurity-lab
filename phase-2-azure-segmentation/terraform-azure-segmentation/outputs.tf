output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg-segmentation.name
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.vnet-segmentation.name
}

output "subnet_ids" {
  description = "IDs of the subnets created"
  value = [
    azurerm_subnet.web.id,
    azurerm_subnet.app.id,
    azurerm_subnet.db.id
  ]
}

output "nsg_names" {
  description = "The name of the Network Security Groups"
  value       = var.nsg_names
}