output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  description = "The address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_ids" {
  description = "Map of subnet names to subnet IDs"
  value       = { for subnet_key, subnet in azurerm_subnet.subnet : subnet_key => subnet.id }
}

output "subnet_address_prefixes" {
  description = "Map of subnet names to their address prefixes"
  value       = { for subnet_key, subnet in azurerm_subnet.subnet : subnet_key => subnet.address_prefixes[0] }
}

output "resource_group_name" {
  description = "The name of the resource group in which the VNET is created"
  value       = var.resource_group_name
}

output "location" {
  description = "The Azure region where the VNET is deployed"
  value       = var.location
}
