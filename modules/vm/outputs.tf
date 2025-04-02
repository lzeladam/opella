output "vm_id" {
  description = "ID de la máquina virtual"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "Nombre de la máquina virtual"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "private_ip_address" {
  description = "Dirección IP privada de la máquina virtual"
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "public_ip_address" {
  description = "Dirección IP pública de la máquina virtual"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}