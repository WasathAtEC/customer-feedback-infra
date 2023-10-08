resource "azurerm_resource_group" "ElysianCrestRG" {
  name     = "ElysianCrestRG"
  location = "eastus"

  tags = {
    environment = "dev"
  }
}