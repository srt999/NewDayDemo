# Configure the Microsoft Azure Provider
provider "azurerm" {
  use_oidc = true
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
  backend "azurerm" {
    resource_group_name  = "storage"
    storage_account_name = "tfmstoragebcknd"
    container_name       = "terraform"
    key                  = "demo.tfstate"
  }

}
