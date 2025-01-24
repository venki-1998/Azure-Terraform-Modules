output "logicapp_name" {
  value = azurerm_logic_app_standard.logicapp[*].name
}

output "logicapp_id" {
  value = azurerm_logic_app_standard.logicapp[*].id
}
