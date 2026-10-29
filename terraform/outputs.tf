output "resource_group_name" {
  description = "Name of the workload resource group."
  value       = azurerm_resource_group.web.name
}

output "web_public_ip_address" {
  description = "Public IP address assigned to the web virtual machine."
  value       = azurerm_public_ip.web.ip_address
}

output "storage_account_name" {
  description = "Name of the workload storage account."
  value       = azurerm_storage_account.web.name
}
