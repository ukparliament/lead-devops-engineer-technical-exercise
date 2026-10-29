resource "azurerm_linux_virtual_machine" "web" {
  name                            = "ldexercise-web-vm"
  computer_name                   = "ldexercise-web"
  resource_group_name             = azurerm_resource_group.web.name
  location                        = azurerm_resource_group.web.location
  size                            = var.virtual_machine_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.web.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
