variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "location" {
  description = "Ubicación (región) de Azure"
  type        = string
}

variable "storage_account_name" {
  description = "Nombre del Storage Account"
  type        = string
}

variable "container_name" {
  description = "Nombre del contenedor en el Storage Account"
  type        = string
}
variable "vnet_name" {}
variable "address_space" {
  type = list(string)
}

variable "subnets" {
  description = "Mapa de nombres de subred a prefijos de dirección"
  type        = map(list(string))
}

variable "nsg_id" {
  description = "ID del Network Security Group"
  type        = string
  default     = null
}

variable "vm_name" {
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

variable "nsg_name" {
  description = "Nombre del Network Security Group"
  type        = string
}
