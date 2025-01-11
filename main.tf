# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "4.14.0"
#     }
#   }
# }

# provider "azurerm" {
#   features {}
# }

# resource "azurerm_resource_group" "aro-rg-1" {
#   name     = "aro-rg-1"
#   location = "UK South"
#   tags = {
#     cluster = "aro-test"
#   }
# }

# resource "azurerm_virtual_network" "aro-vnet-1" {
#   name                = "aro-vnet-1"
#   location            = azurerm_resource_group.aro-rg-1.location
#   resource_group_name = azurerm_resource_group.aro-rg-1.name
#   tags                = azurerm_resource_group.aro-rg-1.tags
#   address_space       = ["10.0.0.0/16"]
# }

# resource "azurerm_subnet" "aro-master-subnet-1" {
#   name                 = "aro-master-subnet-1"
#   resource_group_name  = azurerm_resource_group.aro-rg-1.name
#   virtual_network_name = azurerm_virtual_network.aro-vnet-1.name
#   address_prefixes     = ["10.0.1.0/27"]
# }

# resource "azurerm_subnet" "aro-worker-subnet-1" {
#   name                 = "aro-worker-subnet-1"
#   resource_group_name  = azurerm_resource_group.aro-rg-1.name
#   virtual_network_name = azurerm_virtual_network.aro-vnet-1.name
#   address_prefixes     = ["10.0.2.0/27"]
# }

# resource "azurerm_network_security_group" "aro-nsg-1" {
#   name                = "aro-nsg-1"
#   location            = azurerm_resource_group.aro-rg-1.location
#   resource_group_name = azurerm_resource_group.aro-rg-1.name
#   tags                = azurerm_resource_group.aro-rg-1.tags
# }

# resource "azurerm_network_security_rule" "aro-nsg-rule-inbound-1" {
#   name                        = "aro-nsg-rule-inbound-1"
#   priority                    = 100
#   direction                   = "Inbound"
#   access                      = "Allow"
#   protocol                    = "Tcp"
#   source_port_range           = "*"
#   destination_port_range      = "*"
#   source_address_prefix       = "*"
#   destination_address_prefix  = "*"
#   resource_group_name         = azurerm_resource_group.aro-rg-1.name
#   network_security_group_name = azurerm_network_security_group.aro-nsg-1.name
# }

# resource "azurerm_network_security_rule" "aro-nsg-rule-outbound-1" {
#   name                        = "aro-nsg-rule-outbound-1"
#   priority                    = 100
#   direction                   = "Outbound"
#   access                      = "Allow"
#   protocol                    = "Tcp"
#   source_port_range           = "*"
#   destination_port_range      = "*"
#   source_address_prefix       = "*"
#   destination_address_prefix  = "*"
#   resource_group_name         = azurerm_resource_group.aro-rg-1.name
#   network_security_group_name = azurerm_network_security_group.aro-nsg-1.name
# }
