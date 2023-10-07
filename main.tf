provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

terraform {
  cloud {
    organization = "Elysian-Crest"

    workspaces {
      name = "customer-feedback-infra-tfcloud"
    }
  }
}

module "resource-group" {
  source = "./resource-group"
}