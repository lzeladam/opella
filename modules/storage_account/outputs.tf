# En modules/storage_account/outputs.tf
output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.storage.id
}

output "container_name" {
  description = "The name of the storage container"
  value       = azurerm_storage_container.container.name
}

output "primary_access_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.storage.primary_access_key
  sensitive   = true
}