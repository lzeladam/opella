terraform {
  required_version = "~> 1.3"

  backend "azurerm" {
    resource_group_name  = "rg-dev-opella"
    storage_account_name = "stadevopellatfstate"
    container_name       = "tfstate"
    key                  = "opella/dev/terraform.tfstate"
  }
}