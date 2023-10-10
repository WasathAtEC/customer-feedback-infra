provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

terraform {
  backend "remote" {
    hostname  = "app.terraform.io"
    organization = "Elysian-Crest"
    workspaces {
      prefix = "customer-"
    }
  }
}

resource "azurerm_resource_group" "base_resource_group" {
  name     = "ElysianCrestRG"
  location = "eastus"

  tags = {
    environment = "dev"
  }
}

module "storage" {
  source              = "./storage"
  app_name            = var.app_name
  environment         = var.environment
  location            = azurerm_resource_group.base_resource_group.location
  resource_group_name = azurerm_resource_group.base_resource_group.name
}
