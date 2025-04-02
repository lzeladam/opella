location            = "westeurope"
resource_group_name = "rg-dev-opella"
vnet_name           = "vnet-dev-opella"
address_space       = ["10.0.0.0/16"]
subnets = {
  "subnet-opella-dev-1" = ["10.0.1.0/24"]
  "subnet-opella-dev-2" = ["10.0.2.0/24"]
}
vm_name              = "vm-dev-opella"
subnet_id            = "/subscriptions/816637b8-64cf-48c7-a465-867d366712b6/resourceGroups/opella/providers/Microsoft.Network/virtualNetworks/vnet-dev-opella/subnets/subnet-opella-dev-1"
vm_size              = "Standard_B1s"
admin_username       = "azureuser"
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQD9CogKA/qGD7D2HXqLyDEqYD89LJp2keZXI8Ji8oXNnUPcAwcKAWZNE5rbc9AoGRSMydIfHJtebNty9qICqA4IRhlEYONakWKS9wWXz0zkn734rbCfM+UA6DK3d+5CONGKXTFMcxM7QLe31l3u3TI2EIf+waaWe4vFXza/nWc6HNtjBLvBs6+KGGY0ggSQDhW6lghS6uRPB/gECS4CWB4OA2gPlwSk+/3/HNJst0c+Sj+zZx2zD78EExUCt883jW0Qf8Kp/skc4ipMGQcyvO7M6dUP/fTcepvoU6Uv55v+Wmc14aqUHkKXCrzSbhXpfh12PFRbZdwrNZVRzmqDWE9X06aO4Wutqg/EFTWtQBT3IcD/VtyWzPX++JT7W2CTmkWThXp+ll790bW0FRAtvO62mWCkjn5Gxddrz+jOORv5gDDsOVdj7ot7syCdZhAm5lGszit0dn2aCe0wDUFSHmfJ9t6J2Je9d5NdGeqoPaQf4zxrRZtn1qenvQDXFoULRJZCcvJBywiby6YjQPgnzfc1XHGddqAllpU6HouPVTVgHUkIOvXUFRfs1vHEW470ay6tmFdPVUHPYrIi8myLIABwzD1B1jclDu3KddNBQoMFcD6oGwJZAaV63dTjsXQy7NUT65UYBBBSnhwxViiL9qGy2PT5EFsLtyKGWkdTMLHzsw== alexander@ceres"
nsg_name             = "nsg-dev-opella"