output "vnet_id" {
  value = azurerm_virtual_network.TEST_VNET[*].id
}

output "vnet_name" {
  value = azurerm_virtual_network.TEST_VNET[*].name
}
