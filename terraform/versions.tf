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
    use_oidc             = true
    subscription_id      = "be87a6fe-e545-40ac-8b8b-6f4cb908c55a"
    tenant_id            = "ee35cb0b-4154-45ea-b059-92eeacd17ad5"
  }

}
