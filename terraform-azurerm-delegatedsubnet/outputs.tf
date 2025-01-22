output "subnet_id" {
  value = azurerm_subnet.Subnet_delegated[*].id
}

output "subnet_name" {
  value = azurerm_subnet.Subnet_delegated[*].name
}
