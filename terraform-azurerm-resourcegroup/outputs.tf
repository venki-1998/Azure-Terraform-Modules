output "rg_name" {
  value = azurerm_resource_group.RG_Test[*].name
}

output "rg_id" {
  value = azurerm_resource_group.RG_Test[*].id
}
