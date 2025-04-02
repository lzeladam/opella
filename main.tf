#module "bootstrap_storage" {
#  source = "./modules/storage_account"
#
#  resource_group_name  = var.resource_group_name
#  location             = var.location
#  storage_account_name = var.storage_account_name
#  container_name       = var.container_name
#}

module "vnet" {
  source = "./modules/vnet"

  vnet_name           = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  subnets             = var.subnets
  nsg_id              = module.nsg.nsg_id
}

module "vm" {
  source = "./modules/vm"

  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key      = var.ssh_public_key
  nsg_id              = module.nsg.nsg_id
}

module "nsg" {
  source = "./modules/nsg"

  nsg_name            = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
}
