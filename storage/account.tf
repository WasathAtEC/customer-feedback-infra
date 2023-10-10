resource "azurerm_storage_account" "storage_account" {
  name                     = "${var.app_name}storageaccount"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "${var.app_name}customerfeedbackimages"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "blob"
}