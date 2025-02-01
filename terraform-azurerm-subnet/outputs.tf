output "subnet_id" {
  value = azurerm_subnet.Subnet_TEST[*].id
}

output "subnet_name" {
  value = azurerm_subnet.Subnet_TEST[*].name
}
