# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "terraformrsg"
  #   storage_account_name = "sarandemostgaccnt"
  #   container_name       = "local"
  #   key                  = "terraform.tfstate"
  # }

}
