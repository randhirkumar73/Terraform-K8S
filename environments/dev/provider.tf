terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-devopsinsiders"
    storage_account_name = "twostates"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f6fba721-6f67-4a5f-9be2-783475475687"
}
