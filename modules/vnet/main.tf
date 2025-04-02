resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}

resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value
}

resource "azurerm_subnet_network_security_group_association" "nsg_assoc" {
  for_each                 = var.subnets
  subnet_id                 = azurerm_subnet.subnet[each.key].id
  network_security_group_id = var.nsg_id
}