variable "resource_group_name" {
  description = "Nombre del grupo de recursos donde se creará el Storage Account."
  type        = string
}

variable "location" {
  description = "Ubicación (región) del Storage Account."
  type        = string
}

variable "storage_account_name" {
  description = "Nombre único del Storage Account."
  type        = string
}

variable "container_name" {
  description = "Nombre del contenedor dentro del Storage Account."
  type        = string
}