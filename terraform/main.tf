resource "azurerm_resource_group" "web" {
  name     = "ldexercise-web-prod-rg"
  location = var.location

  tags = {
    environment = "production"
    service     = "web"
  }
}
