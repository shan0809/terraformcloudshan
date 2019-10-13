resource "azurerm_resource_group" "test" {
  name     = "testResourceGroup1"
  location = "West US"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_storage_account" "test" {
  name                     = "storageaccountnamedemo12"
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
    KEY = "VALUE"
  }
}

