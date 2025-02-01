output "winvm_name" {
  value = azurerm_windows_virtual_machine.winvm[*].name
}

output "winvm_id" {
  value = azurerm_windows_virtual_machine.winvm[*].id
}
