resource "azurerm_storage_account" "web" {
  name                     = "ldexercisewebprod001"
  resource_group_name      = azurerm_resource_group.web.name
  location                 = azurerm_resource_group.web.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  https_traffic_only_enabled      = true
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = true
}
