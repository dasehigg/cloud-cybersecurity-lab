provider "azurerm" {
  features {}

  subscription_id = "34ed375f-f1bc-4ee9-a6c9-5dd357ed60a0"
  tenant_id       = "62279278-6b42-442e-8e29-979f0b134ae1"
}

# Resource Group
resource "azurerm_resource_group" "rg-segmentation" {
  name     = var.resource_group_name
  location = var.location
}

# Virtual Network
resource "azurerm_virtual_network" "vnet-segmentation" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-segmentation.name
  address_space       = var.address_space
}

# Subnets
resource "azurerm_subnet" "web" {
  name                 = "web-subnet"
  resource_group_name  = azurerm_resource_group.rg-segmentation.name
  virtual_network_name = azurerm_virtual_network.vnet-segmentation.name
  address_prefixes     = [var.subnets["web"]]
}

resource "azurerm_subnet" "app" {
  name                 = "app-subnet"
  resource_group_name  = azurerm_resource_group.rg-segmentation.name
  virtual_network_name = azurerm_virtual_network.vnet-segmentation.name
  address_prefixes     = [var.subnets["app"]]
}

resource "azurerm_subnet" "db" {
  name                 = "db-subnet"
  resource_group_name  = azurerm_resource_group.rg-segmentation.name
  virtual_network_name = azurerm_virtual_network.vnet-segmentation.name
  address_prefixes     = [var.subnets["db"]]
}

# NSG
resource "azurerm_network_security_group" "web" {
  name                = var.nsg_names[0]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-segmentation.name
}

resource "azurerm_network_security_group" "app" {
  name                = var.nsg_names[1]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-segmentation.name
}

resource "azurerm_network_security_group" "db" {
  name                = var.nsg_names[2]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-segmentation.name
}

# Associate NSG with Subnets
resource "azurerm_subnet_network_security_group_association" "web_assoc" {
  subnet_id                 = azurerm_subnet.web.id
  network_security_group_id = azurerm_network_security_group.web.id
}

resource "azurerm_subnet_network_security_group_association" "app_assoc" {
  subnet_id                 = azurerm_subnet.app.id
  network_security_group_id = azurerm_network_security_group.app.id
}

resource "azurerm_subnet_network_security_group_association" "db_assoc" {
  subnet_id                 = azurerm_subnet.db.id
  network_security_group_id = azurerm_network_security_group.db.id
}