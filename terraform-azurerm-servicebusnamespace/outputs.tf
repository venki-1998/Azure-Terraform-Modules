output "namespace_name" {
  value = azurerm_servicebus_namespace.Test_Sn[*].name
}

output "namespace_id" {
  value = azurerm_servicebus_namespace.Test_Sn[*].id
}
