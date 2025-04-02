variable "vnet_name" {}
variable "location" {}
variable "resource_group_name" {}
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
}