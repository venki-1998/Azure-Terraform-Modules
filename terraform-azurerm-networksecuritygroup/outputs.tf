output "nsg_id" {
  value = azurerm_network_security_group.NSG_Test[*].id
}

output "nsg_name" {
  value = azurerm_network_security_group.NSG_Test[*].name
}
