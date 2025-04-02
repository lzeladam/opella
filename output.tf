#output "bootstrap_storage_account_name" {
#  description = "The name of the storage account created for Terraform state"
#  value       = module.bootstrap_storage.storage_account_name
#}
#
#output "bootstrap_storage_account_id" {
#  description = "The ID of the storage account created for Terraform state"
#  value       = module.bootstrap_storage.storage_account_id
#}
#
#output "bootstrap_container_name" {
#  description = "The name of the blob container created for Terraform state"
#  value       = module.bootstrap_storage.container_name
#}

#output "bootstrap_primary_access_key" {
#  description = "The primary access key for the storage account"
#  value       = module.bootstrap_storage.primary_access_key
#  sensitive   = true
#}

#output "bootstrap_terraform_backend_config" {
#  description = "Configuration string for backend.tf"
#  value       = <<-EOT
#    backend "azurerm" {
#      resource_group_name  = "${var.resource_group_name}"
#      storage_account_name = "${module.bootstrap_storage.storage_account_name}"
#      container_name       = "${module.bootstrap_storage.container_name}"
#      key                  = "terraform.tfstate"
#    }
#  EOT
#}

output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = module.vnet.vnet_id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = module.vnet.vnet_name
}

output "vnet_address_space" {
  description = "The address space of the Virtual Network"
  value       = module.vnet.vnet_address_space
}

output "subnet_ids" {
  description = "Map of subnet names to subnet IDs"
  value       = module.vnet.subnet_ids
}

output "subnet_address_prefixes" {
  description = "Map of subnet names to their address prefixes"
  value       = module.vnet.subnet_address_prefixes
}

output "vm_id" {
  description = "ID de la máquina virtual en el entorno dev"
  value       = module.vm.vm_id
}

output "vm_name" {
  description = "Nombre de la máquina virtual en el entorno dev"
  value       = module.vm.vm_name
}

output "private_ip_address" {
  description = "Dirección IP privada de la máquina virtual en el entorno dev"
  value       = module.vm.private_ip_address
}

output "public_ip_address" {
  description = "Dirección IP pública de la máquina virtual en el entorno dev (si existe)"
  value       = module.vm.public_ip_address
}