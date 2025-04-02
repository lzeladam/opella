variable "vm_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type = string
}

variable "ssh_public_key" {
  description = "Clave SSH pública para la autenticación en la máquina virtual"
  type        = string
  sensitive   = true
}
variable "nsg_id" {
  description = "ID del Network Security Group"
  type        = string
  default     = null
}