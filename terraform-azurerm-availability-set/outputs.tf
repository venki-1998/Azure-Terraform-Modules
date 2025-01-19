output "avset_name" {
  value = azurerm_availability_set.testavset[*].name
}

output "avset_id" {
  value = azurerm_availability_set.testavset[*].id
}
